import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  Failures({required this.errMessage});
}

class ServerFailure extends Failures {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive timeout with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: 'Bad Certificate');

      case DioExceptionType.badResponse:
        ServerFailure.fromResponse(
            response: dioError.response!.data,
            statusCode: dioError.response!.statusCode!);

      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Request to ApiServer was canceld');

      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: 'Connection error');

      case DioExceptionType.unknown:
        return ServerFailure(
            errMessage: 'Opps There was an Error, Please try again');
    }

    return ServerFailure(
        errMessage: 'Opps There was an Error, Please try again');
  }

  factory ServerFailure.fromResponse(
      {required int statusCode, required dynamic response}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: 'Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: 'Internal Server error, Please try later');
    } else {
      return ServerFailure(
          errMessage: 'Opps There was an Error, Please try again');
    }
  }
}

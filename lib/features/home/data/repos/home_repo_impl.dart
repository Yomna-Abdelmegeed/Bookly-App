import 'package:bookly_app/core/error/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failures, List<Item>>> fetchNewestBooks() async {
    try {
      final data = await apiService.get(
        endpoint:
            'volumes?q=subject:flutter&Sorting=newest&Filtering=free-ebooks',
      );

      BookModel bookModel = BookModel.fromJson(data);

      return right(bookModel.items ?? []);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<Item>>> fetchFeaturedBooks() async {
    try {
      final data = await apiService.get(
        endpoint: 'volumes?q=subject:programming&Filtering=free-ebooks',
      );

      BookModel bookModel = BookModel.fromJson(data);

      return right(bookModel.items ?? []);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}

import 'package:bookly_app/core/error/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<Item>>> fetchNewestBooks();
  Future<Either<Failures, List<Item>>> fetchFeaturedBooks();
}

import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book/book.model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchGeneralBooks();
  Future<Either<Failure, List<BookModel>>> fetchProgrammingBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({
    required String category,
  });
}

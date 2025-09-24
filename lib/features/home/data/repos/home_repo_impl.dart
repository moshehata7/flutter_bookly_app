import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book/book.model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endPoint: "volumes?q=novels&filter=free-ebooks&orderBy=newest",
      );

      List<Book> books = [];

      if (data["items"] != null) {
        books = (data["items"] as List)
            .map((item) => Book.fromJson(item))
            .toList();
      }

      return Right(books);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() async{
    try {
      var data = await apiService.get(
        endPoint: "volumes?q=novels&filter=free-ebooks",
      );

      List<Book> books = [];

      if (data["items"] != null) {
        books = (data["items"] as List)
            .map((item) => Book.fromJson(item))
            .toList();
      }

      return Right(books);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

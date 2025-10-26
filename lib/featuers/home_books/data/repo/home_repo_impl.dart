import 'package:bookely/core/network/apiserver.dart';
import 'package:bookely/core/network/endpoint.dart';
import 'package:bookely/featuers/home_books/data/model/book_model.dart';
import 'package:bookely/featuers/home_books/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplImp implements HomeRepo {
  final ApiServes apiServes;

  HomeRepoImplImp({required this.apiServes});

  @override
  Future<Either<String, List<BookModel>>> fetcherAllBook() async {
    try {
      var json = await apiServes.get(endpoint: AppEndPoints.endpoint);
      List<BookModel> books = [];
      for (var book in json["items"]) {
        books.add(BookModel.fromJson(book));
      }

      return right(books);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<BookModel>>> fetcherFreeBook() async {
    try {
      var json = await apiServes.get(
        endpoint:
            "books/v1/volumes?Filtering=free-ebooks&Sorting=newest&q=programming",
      );
      List<BookModel> books = [];

      for (var book in json["items"]) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      return left(e.toString());
      // TODO
    }
  }

  @override
  Future<Either<String, List<BookModel>>> fetcherCategoriesBook() async {
    try {
      var json = await apiServes.get(
        endpoint: "books/v1/volumes?q=subject:<category>",
      );
      List<BookModel> books = [];

      for (var book in json["items"]) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      return left(e.toString());
    }
  }
}

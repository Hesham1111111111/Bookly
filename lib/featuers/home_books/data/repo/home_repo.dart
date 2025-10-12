import 'package:bookely/featuers/home_books/data/model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {

 Future<Either<String , List<BookModel>>> fetcherAllBook();
 Future<Either<String ,List<BookModel>>> fetcherFreeBook();
 Future<Either<String ,List<BookModel>>> fetcherCategoriesBook();



}
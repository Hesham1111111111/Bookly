import 'package:bookely/featuers/home_books/data/model/book_model.dart';

class FreeBookState {}

class FreeBookInitial extends FreeBookState {}

class FreeBookLoading extends FreeBookState {}

class FreeBookSuccess extends FreeBookState {
  final List<BookModel> books;

  FreeBookSuccess({required this.books});
}

class FreeBookError extends FreeBookState {
  final String errorMassage;

  FreeBookError({required this.errorMassage});
}

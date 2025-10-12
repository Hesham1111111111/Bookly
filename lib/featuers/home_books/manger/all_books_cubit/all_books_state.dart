import 'package:bookely/featuers/home_books/data/model/book_model.dart';

class AllBookState {}

class AllBookInitial extends AllBookState {}

class AllBookLoading extends AllBookState {}

class AllBookSuccess extends AllBookState {
  final List<BookModel> books;

  AllBookSuccess({required this.books});
}

class AllBookError extends AllBookState {
  final String errorMassage;

  AllBookError({required this.errorMassage});
}

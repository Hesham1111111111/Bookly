import 'package:bookely/featuers/home_books/data/repo/home_repo.dart';
import 'package:bookely/featuers/home_books/manger/all_books_cubit/all_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllAppCubit extends Cubit<AllBookState> {
  final HomeRepo homeRepo;

  AllAppCubit( this.homeRepo) : super(AllBookInitial());

  getAllBooks() async {
    emit(AllBookLoading());
    var result = await homeRepo.fetcherAllBook();
    result.fold(
      (error) {
        emit(AllBookError(errorMassage: error));
      },
      (books) {
        emit(AllBookSuccess(books: books));
      },
    );
  }
}

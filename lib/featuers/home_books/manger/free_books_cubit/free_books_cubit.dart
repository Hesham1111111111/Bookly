import 'package:bookely/featuers/home_books/data/repo/home_repo.dart';
import 'package:bookely/featuers/home_books/manger/free_books_cubit/free_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FreeAppCubit extends Cubit<FreeBookState> {
  final HomeRepo homeRepo;

  FreeAppCubit(this.homeRepo) : super(FreeBookInitial());

  getFreeBooks() async {
    emit(FreeBookLoading());
    var result = await homeRepo.fetcherFreeBook();
    result.fold(
      (error) {
        emit(FreeBookError(errorMassage: error));
      },
      (books) {
        emit(FreeBookSuccess(books:books));
      },
    );
  }
}

import 'package:bookely/featuers/home_books/manger/free_books_cubit/free_books_cubit.dart';
import 'package:bookely/featuers/home_books/manger/free_books_cubit/free_books_state.dart';
import 'package:bookely/featuers/home_books/ui/views/widget/book_item_free.dart';
import 'package:bookely/featuers/home_books/ui/views/widget/shimmer%20_free_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewFreeBook extends StatelessWidget {
  const ListViewFreeBook({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FreeAppCubit, FreeBookState>(
      builder: (context, state) {
        if (state is FreeBookSuccess) {
          return SliverToBoxAdapter(
            child: SizedBox(
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: state.books.length,

                itemBuilder: (context, index) {
                  return BookItemFree(bookModel: state.books[index], bookModels:state.books,);
                },
              ),
            ),
          );
        } else if (state is FreeBookError) {
          return SliverToBoxAdapter(child: Text("Error ${state.errorMassage}"));
        } else {
          return SliverToBoxAdapter(
            child: SizedBox(
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,

                itemBuilder: (context, index) {
                  return ShimeerFreeBook();
                },
              ),
            ),
          );
        }
      },
    );
  }
}

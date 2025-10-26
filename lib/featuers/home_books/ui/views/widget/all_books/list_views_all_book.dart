import 'package:bookely/featuers/home_books/manger/all_books_cubit/all_books_cubit.dart';
import 'package:bookely/featuers/home_books/manger/all_books_cubit/all_books_state.dart';
import 'package:bookely/featuers/home_books/ui/views/widget/all_books/book_item.dart';
import 'package:bookely/featuers/home_books/ui/views/widget/all_books/shimmer_list_viwe_all_book.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewsBook extends StatelessWidget {
  const ListViewsBook({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<AllAppCubit, AllBookState>(
        builder: (context, state) {
          if (state is AllBookSuccess) {
            return SizedBox(
              height: 224.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return BookItem(
                    bookModel: state.books[index],
                    bookModels: state.books,
                  );
                },
              ),
            );
          } else if (state is AllBookError) {
            return Text("Error ${state.errorMassage}");
          } else {
            return ShimmerListViweBook();
          }
        },
      ),
    );
  }
}

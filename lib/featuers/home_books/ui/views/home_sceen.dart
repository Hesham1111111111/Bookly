import 'package:bookely/core/di/serveer_locator.dart';
import 'package:bookely/core/resources/styles.dart';
import 'package:bookely/featuers/home_books/data/repo/home_repo_impl.dart';
import 'package:bookely/featuers/home_books/manger/all_books_cubit/all_books_cubit.dart';
import 'package:bookely/featuers/home_books/manger/free_books_cubit/free_books_cubit.dart';
import 'package:bookely/featuers/home_books/ui/views/widget/all_books/list_views_all_book.dart';
import 'package:bookely/featuers/home_books/ui/views/widget/custm_app_bar.dart';
import 'package:bookely/featuers/home_books/ui/views/widget/free_books/list_view_free_book.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              AllAppCubit(getIt.get<HomeRepoImplImp>())..getAllBooks(),
        ),
        BlocProvider(
          create: (context) =>
              FreeAppCubit(getIt.get<HomeRepoImplImp>())..getFreeBooks(),
        ),
      ],
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomScrollView(
              slivers: [
                CustmAppBar(),

                ListViewsBook(),

                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Text("Best Seller", style: AppStyle.text33),
                  ),
                ),

                ListViewFreeBook(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

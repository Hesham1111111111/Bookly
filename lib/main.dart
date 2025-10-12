import 'package:bookely/core/network/apiserver.dart';
import 'package:bookely/core/resources/colors_app.dart';
import 'package:bookely/featuers/home_books/data/repo/home_repo_impl.dart';
import 'package:bookely/featuers/home_books/manger/all_books_cubit/all_books_cubit.dart';
import 'package:bookely/featuers/home_books/manger/free_books_cubit/free_books_cubit.dart';
import 'package:bookely/featuers/home_books/ui/views/home_sceen.dart';
import 'package:bookely/featuers/home_books/ui/views/widget/deteles_screen.dart';
import 'package:bookely/featuers/splash/manger/splash_cubit.dart';
import 'package:bookely/featuers/splash/ui/views/splash.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              AllAppCubit(HomeRepoImplApi(apiServes: ApiServes(dio: Dio())))
                ..getAllBooks(),
        ),
        BlocProvider(
          create: (_) =>
              FreeAppCubit(HomeRepoImplApi(apiServes: ApiServes(dio: Dio())))
                ..getFreeBooks(),
        ),
        BlocProvider(create: (_) => SplashCubit()..initAnimation),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "HomeScreen": (context) => const HomeScreen(),
          "DetelesScreen": (context) => const DetelesScreen(),
        },
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors.primaryColor,
        ),
        home: const Splash(),
      ),
    );
  }
}

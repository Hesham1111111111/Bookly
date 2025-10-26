import 'package:bookely/core/di/serveer_locator.dart';
import 'package:bookely/core/resources/colors_app.dart';

import 'package:bookely/featuers/home_books/ui/views/home_sceen.dart';
import 'package:bookely/featuers/home_books/ui/views/widget/detailles_books/deteles_screen.dart';
import 'package:bookely/featuers/splash/ui/views/widget/splash_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  setup();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(357, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "HomeScreen": (context) => const HomeScreen(),
          "DetelesScreen": (context) => const DetelesScreen(),
        },
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors.primaryColor,
        ),
        home: SplashBody(),
      ),
    );
  }
}

import 'package:bookely/core/di/serveer_locator.dart';
import 'package:bookely/core/resources/colors_app.dart';
import 'package:bookely/core/routing/app_rout.dart';

import 'package:bookely/featuers/splash/ui/views/widget/splash_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  setup();
  runApp(BookApp(appRouter: AppRouter()));
}

class BookApp extends StatelessWidget {
  const BookApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(357, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter().generateRouter,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors.primaryColor,
        ),
        home: SplashBody(),
      ),
    );
  }
}

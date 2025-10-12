import 'package:bookely/featuers/home_books/ui/views/home_sceen.dart';
import 'package:bookely/featuers/splash/manger/splash_cubit.dart';
import 'package:bookely/featuers/splash/ui/views/widget/splash_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: BlocBuilder<SplashCubit, SplashState>(
        builder: (context, state) {
          if (state is SplashInitial) {
            return SplashBody();
          } else {
            return HomeScreen();
          }
        },
      ),
    );
  }
}

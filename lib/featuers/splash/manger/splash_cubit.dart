import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> slidingTextAnimation;

  void initAnimation(TickerProvider ticker, BuildContext context) {
    animationController = AnimationController(
      vsync: ticker,
      duration: const Duration(seconds: 3),
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, -5),
      end: Offset(0,0),
    ).animate(animationController);

    slidingTextAnimation = Tween<Offset>(
      begin: const Offset(0, 5),
      end: Offset(0,0),
    ).animate(animationController);

    animationController.forward();

    Future.delayed(const Duration(seconds: 5), () {
      emit(SplashNavigateHome());
    });
  }
}

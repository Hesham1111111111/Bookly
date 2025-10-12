part of 'splash_cubit.dart';

@immutable
sealed class SplashState {}

class SplashInitial extends SplashState {}

class SplashNavigateHome extends SplashState {}

class Error extends SplashState {}

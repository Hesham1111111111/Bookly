import 'package:bookely/core/resources/images_app.dart';
import 'package:bookely/core/resources/styles.dart';
import 'package:bookely/featuers/splash/manger/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<SplashCubit>(context)
      ..initAnimation(TickerProviderStateMixinHelper(), context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SlideTransition(
            position: cubit.slidingAnimation,
            child: Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AppImages.logo),
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 10),
        SlideTransition(
          position: cubit.slidingTextAnimation,
          child: Text(
            "Read Your Books",
            style: AppStyle.text22,
          ),
        ),
      ],
    );
  }
}

class TickerProviderStateMixinHelper extends TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);
}
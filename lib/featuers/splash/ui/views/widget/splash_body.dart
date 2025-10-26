import 'package:bookely/core/resources/images_app.dart';
import 'package:bookely/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({super.key});


  @override
  State<SplashBody> createState() => _SplashBodyState();
}
late  AnimationController animationController;
late Animation<Offset>slidingTextAnimation;
late Animation<Offset>slidingImageAnimation;


class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    animationController=AnimationController(vsync: this ,
    duration: Duration(seconds: 5),
    );
    slidingImageAnimation=Tween<Offset>(begin: Offset(0, -5),end: Offset(0, 0)).animate(animationController);
    slidingTextAnimation=Tween<Offset>(begin: Offset(0, 5),end: Offset(0, 0)).animate(animationController);
    animationController.forward();
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, "HomeScreen");

    });

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SlideTransition(
              position: slidingImageAnimation,
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
            position: slidingTextAnimation,
            child: Text(
              "Read Your Books",
              style: AppStyle.text22,
            ),
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
// import 'package:practise/app_screen/home.dart';
import 'package:practise/app_screen/onbording/screen_one.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SpalshScreen extends StatefulWidget {
  @override
  _SpalshScreenState createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
              Vx.purple400,
              Vx.yellow600,
            ])),
        child: AnimatedSplashScreen(
          splash: Image.asset(
            "assets/spalsh.png",
            height: 400,
            width: 400,

            // width: MediaQuery.of(context).size.width * 20,
            // height: MediaQuery.of(context).size.height * 50,
          ),
          nextScreen: OnboardingScreenOne(),
          splashTransition: SplashTransition.fadeTransition,
          duration: 4000,
          backgroundColor: Vx.red400,
        ),
      ),
    );
  }
}

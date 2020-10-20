import 'package:app_rick_morty/app/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      gradientBackground: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Color(0xffED213A), Color(0xff93291E)],
      ),
      navigateAfterSeconds: HomePage(),
      loaderColor: Colors.transparent,
    );
  }
}

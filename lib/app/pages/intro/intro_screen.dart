import 'package:app_rick_morty/app/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xffED213A), Color(0xff93291E)],
              ),
            ),
          ),
          Positioned(
            top: height * 0.3,
            left: 0,
            right: 0,
            child: Text('Rick e Morty',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: height * 0.6,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/rick_morty.png"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

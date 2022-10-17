import 'dart:async';
import 'package:flutter/material.dart';
import 'package:healing_project/View/welcome_page/splash_screen2.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    splashscreenStrart();
  }

  splashscreenStrart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Splash2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/adventure.png'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}

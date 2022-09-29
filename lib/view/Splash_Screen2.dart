import 'dart:async';

import 'package:flutter/material.dart';
import 'package:healing_project/view/GetStarted.dart';

import '../HomePage/HomePage.dart';

class Splash2 extends StatefulWidget {
  Splash2({Key? key}) : super(key: key);

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  void initState() {
    super.initState();
    splashScreen2();
  }

  splashScreen2() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GetStarted()));
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
                image: AssetImage('images/adventure.png'), fit: BoxFit.cover)),
      ),
    );
  }
}

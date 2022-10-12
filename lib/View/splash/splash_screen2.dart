import 'dart:async';

import 'package:flutter/material.dart';
import 'package:healing_project/View/onboarding/onboarding.dart';

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
          context, MaterialPageRoute(builder: (context) => onboarding()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/garut.png"), fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 100, left: 10),
              child: Column(
                children: [
                  Text(
                    'Healing_ Time',
                    style: TextStyle(fontSize: 32, color: Color(0xffFFFFFF)),
                  ),
                  Text(
                    'Adventure Exploler',
                    style: TextStyle(fontSize: 24, color: Color(0xffFFFFFF)),
                  ),
                  Text(
                    'Rasakan Kebebasan Anda',
                    style: TextStyle(fontSize: 16, color: Color(0xffFFFFFF)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:healing_project/HomePage/HomePage.dart';
import 'package:healing_project/UserSeting/Login/login.dart';
import 'package:healing_project/bootmNavigator/bottomNavigator.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

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
            Padding(
              padding: const EdgeInsets.all(50),
              child: Container(
                margin: EdgeInsets.only(
                  top: 400,
                  // left: 100,
                ),
                height: 55,
                width: 287,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Color(0xff5C40CC)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Login()));
                        },
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

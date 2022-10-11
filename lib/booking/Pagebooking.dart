import 'package:flutter/material.dart';

import 'package:healing_project/booking/componen/bottombook.dart';
import 'package:healing_project/booking/componen/model/formboking.dart';

class pagebooking extends StatelessWidget {
  const pagebooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Booking Travel",
          style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: "font/Poppins--SemiBold",
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xff5C40CC),
      ),
      body: Container(
        child: Column(children: [
          formboking(),
          bottombook(),
        ]),
      ),
    );
  }
}

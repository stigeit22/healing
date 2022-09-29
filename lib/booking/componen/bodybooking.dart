import 'package:flutter/material.dart';
import 'package:healing_project/booking/componen/bottombook.dart';
import 'package:healing_project/booking/componen/customformbooking.dart';

import 'model/formboking.dart';

class bodybooking extends StatelessWidget {
  //const bodybooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            formboking(),
            bottombook(),
          ],
        ),
      ),
    );
  }
}

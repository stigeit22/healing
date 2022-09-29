import 'package:flutter/material.dart';
import 'package:healing_project/HomePage/componen/headder/tabbar.dart';

class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SingleChildScrollView(
            child: Column(
          children: [
            tabbar(),
          ],
        )),
      ],
    ));
  }
}

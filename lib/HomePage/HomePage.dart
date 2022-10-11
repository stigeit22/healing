import 'package:flutter/material.dart';
import 'componen/headder/tabbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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

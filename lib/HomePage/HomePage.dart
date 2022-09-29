import 'package:flutter/material.dart';
import 'package:healing_project/HomePage/componen/body/Untuk%20Anda/promo.dart';
import 'package:healing_project/HomePage/componen/body/body.dart';
import 'package:healing_project/HomePage/componen/headder/title.dart';
import 'package:healing_project/widget/homeOption2.dart';

import '../widget/homeOption.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        body(),
      ],
    ));
  }
}

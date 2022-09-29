import 'package:flutter/material.dart';
import 'package:healing_project/HomePage/componen/body/Etika/panduan.dart';
import 'package:healing_project/HomePage/componen/body/Etika/slideetika.dart';

class PageEtika extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(child: ListView(children: [
        slideetka(),
        EtikaPanduan()

      ]), 
      )
    );
  }
}
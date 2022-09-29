import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customformbooking extends StatelessWidget {
  final Icon icon;
  final String hint;
  final String label;
  final String link;

  const customformbooking({
    Key? key,
    required this.icon,
    required this.hint,
    required this.label,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: TextField(
      onTap: () {
        Get.toNamed(link);
      },
      cursorColor: Colors.black,
      autofocus: false,
      decoration: InputDecoration(
          //focusedBorder:
          //  OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          icon: icon,
          hintText: hint,
          border:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          label: Text(
            label,
            style: TextStyle(color: Colors.black),
          )),
    ));
  }
}

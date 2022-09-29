import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class bottomoption extends StatelessWidget {
  final String text;
  final String link;
  const bottomoption({Key? key, required this.text, required this.link}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Color(0xff5C40CC)),
          child: TextButton(onPressed: (){Get.toNamed(link);}, child: Text(text, style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),)),
        );
      
    
    
  }
}
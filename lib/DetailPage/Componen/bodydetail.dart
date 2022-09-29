import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healing_project/DetailPage/Componen/deskripsi.dart';
import 'package:healing_project/DetailPage/Componen/headDetail.dart';
import 'package:healing_project/DetailPage/Componen/ratting.dart';
import 'package:healing_project/DetailPage/Componen/slidefoto.dart';
import 'package:healing_project/DetailPage/Componen/textbutton.dart';
import 'package:healing_project/widget/custombottom.dart';

import 'lokasidetail.dart';
import 'map.utils.dart';

class bodydetail extends StatelessWidget {
  const bodydetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: ListView(children: <Widget>[
      headDetail(),
      slidefoto(),
      deskripsi(),
      lokasidetail(),
      ratingdetail(),
     // textbutton(),
      
    ])),
    persistentFooterButtons: [
        Center(
          child:
         Container(
                        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17), color: Color(0xff5C40CC)),
                        child: TextButton(
                        onPressed: () {
                          Get.toNamed( "pagebooking");
                        },
                        child: Text(
                          'Booking Travel',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,color: Colors.white,
                              ),
                        )),
                      ),
               ),
      ],
    
    );
  }
}

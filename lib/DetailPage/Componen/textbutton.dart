import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healing_project/booking/Pagebooking.dart';
import 'package:healing_project/bootmNavigator/bottomNavigator.dart';

import 'map.utils.dart';

class textbutton extends StatelessWidget {
  const textbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(70.0),
      child: Row(
        children: [
          Container(
            // margin: EdgeInsets.only(
            //   top: 400,
            //   left: 100,
            // ),
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17), color: Color(0xff5C40CC)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      MapUtils.openMap("Sabda Alam Water Park","Sabda Alam Water Park");
                    },
                    child: Text(
                      'Kunjungi Sekarang',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
              ],
            ),
          ),
          Container(
            // margin: EdgeInsets.only(
            //   top: 400,
            //   left: 100,
            // ),
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17), color: Color(0xff5C40CC)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Get.toNamed( "pagebooking");
                    },
                    child: Text(
                      'Booking Travel',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/sockets/src/socket_notifier.dart';
import 'package:healing_project/DetailPage/Componen/bodydetail.dart';
import 'package:healing_project/booking/Pagebooking.dart';

import '../onboarding/onboarding.dart';

class detailpage extends StatefulWidget {
  const detailpage({Key? key}) : super(key: key);

  @override
  _detailpageState createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wisata Air Sabda Alam ",
          style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: "font/Poppins--SemiBold",
              fontWeight: FontWeight.bold),
        ),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => onboarding()));
                            },
                            child: Text('about'))),
                    PopupMenuItem(child: Text("Share"))
                  ])
        ],
        backgroundColor: Color(0xff5C40CC),
      ),
      body: Container(
        child: bodydetail(),
      ),
      persistentFooterButtons: [
        Center(
          child: Container(
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Color(0xff5C40CC)),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => pagebooking()));
                },
                child: Text(
                  'Booking Travel',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
          ),
        ),
      ],
    );
  }
}

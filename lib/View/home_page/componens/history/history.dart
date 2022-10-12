import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healing_project/View/home_page/componens/Populer/PopulerOption.dart';

class history extends StatelessWidget {
  const history({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.toNamed("buttomNavigator");
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          "History",
          style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: "font/Poppins--SemiBold",
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
        backgroundColor: Color(0xff5C40CC),
      ),
      body: Container(
        child: Column(
          children: [
            PopulerOption(
                nomer: "1.  ",
                imageUrl: "images/SabdaAlam.jpeg",
                title: "Wisata\nSabda Alam",
                lokasi: "Garut",
                rate: "55",
                link: "detailpage"),
          ],
        ),
      ),
    );
  }
}

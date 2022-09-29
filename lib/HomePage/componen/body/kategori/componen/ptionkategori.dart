import 'package:flutter/material.dart';
import 'package:get/get.dart';

class optionKategori extends StatelessWidget {
  final String img;
  final String title;
  final String link;
  const optionKategori(
      {Key? key, required this.img, required this.title, required this.link})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Get.toNamed(link);
        },
        child: Container(
            width: double.infinity,
            child: Row(
              
              children: [
                Image(
                  image: AssetImage(img),
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 20,)  ,
                              Text(
                  title,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: "fonts/Poppins-Medium.ttf",fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        );
  }
}

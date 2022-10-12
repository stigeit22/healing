import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OptionWisata extends StatelessWidget {
  final String nomer;
  final String imageUrl;
  final String title;
  final String lokasi;
  final String rate;
  final String link;

  const OptionWisata(
      {Key? key,
      required this.nomer,
      required this.imageUrl,
      required this.title,
      required this.lokasi,
      required this.rate,
      required this.link})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, link);
      },
      child: Container(
        height: 120,
        width: double.infinity,
        // margin: EdgeInsets.all(10),

        //padding: EdgeInsets.only(top: 8),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey.shade800,
            //spreadRadius: 0,
            //blurRadius: 3,
            // offset: Offset(0, 1)
          )
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Row(
                    children: [
                      Text(
                        nomer,
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff1F1449),
                            fontFamily: "fonts/Poppins-Medium.ttf"),
                      ),
                      Container(
                        width: 140,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(imageUrl),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff1F1449),
                                fontFamily: "fonts/Poppins-Medium.ttf"),
                          ),
                          Text(
                            lokasi,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff9698A9),
                                fontFamily: "fonts/Poppins-Light.ttf"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Text(
                    rate,
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff1F1449),
                        fontFamily: "fonts/Poppins-Medium.ttf"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

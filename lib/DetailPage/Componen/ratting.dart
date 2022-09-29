import 'package:flutter/material.dart';
import 'package:healing_project/widget/customprogresbar.dart';

class ratingdetail extends StatefulWidget {
  const ratingdetail({Key? key}) : super(key: key);

  @override
  _ratingdetailState createState() => _ratingdetailState();
}

class _ratingdetailState extends State<ratingdetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ratting ",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontFamily: "font/Poppins-SemiBold.ttf",
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "4,5",
                        style: TextStyle(
                            fontSize: 50,
                            color: Colors.black,
                            fontFamily: "font/Poppins-SemiBold.ttf"),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 13,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                costumprogresbar(
                  width: 80.0,
                ),
              ],
            ),
          ],
        ));
  }
}

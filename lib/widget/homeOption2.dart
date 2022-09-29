import 'package:flutter/material.dart';

class homeOption2 extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String link;
  final String rate;
  final String lokasi;
  const homeOption2(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.link,
      required this.lokasi,
      required this.rate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, link);
        },
        child: Container(
          height: 90,
          width: 327,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.only(top: 10),

          //padding: EdgeInsets.only(top: 8),
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.grey.shade800,
              spreadRadius: 0,
              blurRadius: 3,
              // offset: Offset(0, 1)
            )
          ]),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage(imageUrl),
                      width: 70,
                      height: 70,
                    ),
                  ),
                  Row(
                    children: [
                      Column(
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
                                fontSize: 14,
                                color: Color(0xff9698A9),
                                fontFamily: "fonts/Poppins-Light.ttf"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
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
                ],
              ),
            ],
          ),
        ));
  }
}

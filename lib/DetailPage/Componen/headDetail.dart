import 'package:flutter/material.dart';

class headDetail extends StatelessWidget {
  const headDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(20.0),
           // child:
             Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/SabdaAlam.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(5)),
            ),
         // ),
          Container(
            margin: EdgeInsets.only(left: 20,top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wisata Air Sabda Alam",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: "font/Poppins-SemiBold.ttf",
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Garut Selatan",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: "font/Poppins-Regular.ttf"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

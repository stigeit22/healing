
import 'package:flutter/material.dart';

class slidefoto extends StatefulWidget {
  const slidefoto({Key? key}) : super(key: key);

  @override
  _slidefotoState createState() => _slidefotoState();
}

class _slidefotoState extends State<slidefoto> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(
                        left: 20, right: 10, top: 20, bottom: 20),
                    width: 200,
                    height: 125,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/sabda1.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5))),
                Container(
                    margin: EdgeInsets.only(right: 20, top: 20, bottom: 20),
                    width: 200,
                    height: 125,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/sabda2.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(5))),
                Container(
                    margin: EdgeInsets.only(right: 20, top: 20, bottom: 20),
                    width: 200,
                    height: 125,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/sabda3.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(5))),
                Container(
                    width: 200,
                    height: 125,
                    margin: EdgeInsets.only(right: 20, top: 20, bottom: 20),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/sabda4.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5))),
                Container(
                    width: 200,
                    height: 125,
                    margin: EdgeInsets.only(right: 20, top: 20, bottom: 20),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/image 19.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(5))),
                Container(
                    width: 200,
                    height: 125,
                    margin: EdgeInsets.only(right: 20, top: 20, bottom: 20),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/sabda2.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(5)))
              ],
            )));
  }
}

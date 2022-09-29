import 'package:flutter/material.dart';

class costumprogresbar extends StatelessWidget {
  const costumprogresbar({Key? key, required this.width}) : super(key: key);
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Text("1"),
              Stack(
                children: [
                  Container(
                    width: width,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(5),
                    child: AnimatedContainer(
                      height: 10,
                      width: width * 2.5,
                      duration: Duration(microseconds: 10),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text("2"),
              Stack(
                children: [
                  Container(
                    width: width,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(5),
                    child: AnimatedContainer(
                      height: 10,
                      width: width * 2.5,
                      duration: Duration(microseconds: 10),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text("3"),
              Stack(
                children: [
                  Container(
                    width: width,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(5),
                    child: AnimatedContainer(
                      height: 10,
                      width: width * 2.5,
                      duration: Duration(microseconds: 10),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text("4"),
              Stack(
                children: [
                  Container(
                    width: width,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(5),
                    child: AnimatedContainer(
                      height: 10,
                      width: width * 2.5,
                      duration: Duration(microseconds: 10),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text("5"),
              Stack(
                children: [
                  Container(
                    width: width,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(5),
                    child: AnimatedContainer(
                      height: 10,
                      width: width * 2.5,
                      duration: Duration(microseconds: 10),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class header extends StatelessWidget {
  const header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [
      Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore terus',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1F1449)),
                  ),
                  Text(
                'keindahan alam  di sekitar kita',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1F1449)),
              )
                ],
              )),
    ],),);
    
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:healing_project/View/detail_page/componens/map.utils.dart';


class GoogleMap extends StatelessWidget {
  const GoogleMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: TextButton(
          onPressed: () {
            MapUtils.openMap("Sabda Alam Water Park", "Sabda Alam Water Park");
          },
          child: Text("OpenMap")),
    ));
  }
}

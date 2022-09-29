import 'package:flutter/material.dart';

class custombottom extends StatelessWidget {
  final String text;
  final String link;
  const custombottom({Key? key, required this.text, required this.link})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 287,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17), color: Color(0xff5C40CC)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, link);
              },
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
        ],
      ),
    );
  }
}

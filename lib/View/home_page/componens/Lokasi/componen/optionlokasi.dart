import 'package:flutter/material.dart';

class optionLokasi extends StatelessWidget {
  final String nomer;
  final String title;
  final String link;
  const optionLokasi(
      {Key? key, required this.nomer, required this.title, required this.link})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, link);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            child: Row(
              children: [
                Text(
                  nomer,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: "fonts/Poppins-Medium.ttf"),
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: "fonts/Poppins-Medium.ttf"),
                )
              ],
            ),
          ),
        ));
  }
}

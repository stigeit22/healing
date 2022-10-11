import 'package:flutter/material.dart';
import 'package:healing_project/DetailPage/detailpage.dart';
import 'package:healing_project/PageCekTravel/cektravell.dart';

class bottombook extends StatelessWidget {
  const bottombook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(70.0),
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17), color: Color(0xff5C40CC)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => cektravell()));
                },
                child: Text(
                  'Cek Travel',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}

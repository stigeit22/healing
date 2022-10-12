import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

const Kblue = Color(0xff5C40CC);

class optionpesanan extends StatelessWidget {
  final String name;
  final String penumpang;
  final String status;
  final String tanggal;
  final String nopesanan;

  final String Jamb;
  final String Jamp;
  final String Lawal;
  final String Ltujuan;
  final String link;

  const optionpesanan({
    super.key,
    required this.name,
    required this.penumpang,
    required this.status,
    required this.tanggal,
    required this.nopesanan,
    required this.Jamb,
    required this.Jamp,
    required this.Lawal,
    required this.Ltujuan,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 120,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        //color: Colors.grey,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey, //color of shadow
              spreadRadius: 0.2, //spread radius
              blurRadius: 3, // blur radius
              //offset: Offset(0, 1), // changes position of shadow
              //first paramerter of offset is left-right
              //second parameter is top to down
            ),
            //you can set more BoxShadow() here
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 14),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.calendar_month,
                      size: 14,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(tanggal, style: TextStyle(fontSize: 10)),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.circle_rounded,
                      size: 12,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(status, style: TextStyle(fontSize: 10))
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(nopesanan, style: TextStyle(fontSize: 10)),
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 12,
                    ),
                    Text(penumpang, style: TextStyle(fontSize: 10)),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.green,
                  width: 220,
                  height: 65,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(Lawal,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white)),
                          Text(Jamb,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white))
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        height: 10,
                        color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(Ltujuan,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white)),
                          Text(Jamp,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white))
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  color: Color(0xffFF3D00),
                  width: 73,
                  height: 65,
                  child: Center(
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, link);
                        },
                        child: Text('Detail',
                            style:
                                TextStyle(fontSize: 12, color: Colors.white))),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

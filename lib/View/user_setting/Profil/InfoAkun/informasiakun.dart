import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:healing_project/View/metode_pembayaran/BankBCA/metodebayarBCA.dart';


class infoakun extends StatelessWidget {
  const infoakun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5C40CC),
        title: Text('Informsai Akun'),
      ),
      body: Container(
        color: Color(0xffD9D9D9),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'DATA PRIBADI',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'UBAH',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff5C40CC)),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey, //color of shadow
                        spreadRadius: 0.2, //spread radius
                        blurRadius: 3, // blur radius
                        //offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage("images/setting.png"),
                                    width: 30,
                                    height: 30,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  infoakun()));
                                    },
                                    child: Text("Nama Lengkap",
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  ),
                                ],
                              ),
                              Text(
                                'M Thorik S',
                                style: TextStyle(color: Colors.grey),
                              )
                            ]),
                      ),
                      SizedBox(height: 10),
                      Divider(color: Colors.grey),
                      SizedBox(height: 10),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage("images/edit.png"),
                                    width: 30,
                                    height: 30,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  metodeBca()));
                                    },
                                    child: Text("Jenis Kelamin",
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  ),
                                ],
                              ),
                              Text(
                                'Laki-laki',
                                style: TextStyle(color: Colors.grey),
                              )
                            ]),
                      ),
                      Divider(color: Colors.grey),
                      SizedBox(height: 10),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage("images/setting.png"),
                                    width: 30,
                                    height: 30,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  infoakun()));
                                    },
                                    child: Text("Tanggal Lahir",
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  ),
                                ],
                              ),
                              Text(
                                '12 Mar 1999',
                                style: TextStyle(color: Colors.grey),
                              )
                            ]),
                      ),
                      SizedBox(height: 10),
                      Divider(color: Colors.grey),
                      SizedBox(height: 10),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage("images/help.png"),
                                    width: 30,
                                    height: 30,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  metodeBca()));
                                    },
                                    child: Text("Email",
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  ),
                                ],
                              ),
                              Text(
                                'muhamadthorik01@gmail.com',
                                style: TextStyle(color: Colors.grey),
                              )
                            ]),
                      ),
                      SizedBox(height: 10),
                      Divider(color: Colors.grey),
                      SizedBox(height: 10),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage("images/help.png"),
                                    width: 30,
                                    height: 30,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  metodeBca()));
                                    },
                                    child: Text("No Handphone",
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  ),
                                ],
                              ),
                              Text(
                                '0831768721',
                                style: TextStyle(color: Colors.grey),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Akun yang Terhubung',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Masuk lebih mudah dengan menghubungkan akun sosial Anda ke Helaing Time',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(10),
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
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 25),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image(
                                  image: AssetImage("images/google.png"),
                                  width: 30,
                                  height: 30,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => infoakun()));
                                  },
                                  child: Text("Google",
                                      style: TextStyle(
                                        color: Colors.black,
                                      )),
                                ),
                              ],
                            ),
                            Icon(Icons.check),
                          ]),
                    ),
                    Divider(color: Colors.grey),
                    SizedBox(height: 10),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image(
                                  image: AssetImage("images/fb.png"),
                                  width: 30,
                                  height: 30,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => infoakun()));
                                  },
                                  child: Text("Facebook",
                                      style: TextStyle(
                                        color: Colors.black,
                                      )),
                                ),
                              ],
                            ),
                            GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xff5C40CC),
                                    borderRadius: BorderRadius.circular(5)),
                                height: 38,
                                width: 75,
                                child: Center(
                                    child: Text(
                                  'Hubungkan',
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              onTap: (() {}),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

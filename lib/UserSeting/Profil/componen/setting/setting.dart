import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../booking/PageCekTravel.dart/PagePembayaran/MetodePembayaran/BankBCA/metodebayarBCA.dart';
import 'InfoAkun/informasiakun.dart';

class setting extends StatelessWidget {
  const setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5C40CC),
        title: Text('Pengaturan'),
      ),
      body: Container(
        color: Color(0xffD9D9D9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'AKUN & KEAMANAN',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
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
                                                  infoakun()));
                                    },
                                    child: Text("Informasi Akun",
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_right),
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
                                    child: Text("Password & Keamanan",
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_right),
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
                                    child: Text("Syarat & Ketentuan",
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_right),
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
                                    child: Text("Kebijakan Privasi",
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_right),
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(10),
                height: 55,
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
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.logout,
                            color: Colors.grey,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => metodeBca()));
                            },
                            child: Text("Keluar",
                                style: TextStyle(
                                  color: Colors.black,
                                )),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_right),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

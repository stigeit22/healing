import 'dart:async';

import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:healing_project/View/bootm_navigator/bottomNavigator.dart';
import 'package:healing_project/View/pesanan/tabbarpesanan.dart';

class transferBca extends StatefulWidget {
  @override
  State<transferBca> createState() => _transferBcaState();
}

class _transferBcaState extends State<transferBca>
    with TickerProviderStateMixin {
  late AnimationController controller;
  String get countText {
    Duration count = controller.duration! * controller.value;
    return '${(count.inHours % 60).toString().padLeft(2, '0')}:${(count.inMinutes % 60).toString().padLeft(2, '0')}:${(count.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 85999),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5C40CC),
        title: Text("Transfer BCA"),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                        child: TextButton(
                            onPressed: () {
                              //Navigator.push(context,MaterialPageRoute(builder: (context)=> ));
                            },
                            child: Text('about'))),
                    PopupMenuItem(child: Text("Share"))
                  ])
        ],
        bottom: PreferredSize(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              padding: EdgeInsets.only(
                bottom: 5,
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Selesaikan pesanan dalam  '),
                  AnimatedBuilder(
                      animation: controller,
                      builder: (context, child) => Text(
                            countText,
                          )),
                  Icon(Icons.lock_clock, color: Colors.grey[80])
                ],
              ),
            ),
            preferredSize: Size.fromHeight(50)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nomor Pesanan",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("9a2fa43252"),
                        Text(
                          "copy",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff5C40CC),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bayar Sebelum:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text("Senin,18 Juli 2022, 13:41 WIB"),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Transfer Ke:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text("Nomor Rekening"),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("4453-123-222"),
                          TextButton(
                            onPressed: () {
                              controller.reverse(
                                  from: controller.value == 0
                                      ? 1.0
                                      : controller.value);
                            },
                            child: Text(
                              "copy",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff5C40CC),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Atas Nama",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("PT.GO ONLINE DESTINATIONS"),
                          Image(
                            image: AssetImage('images/bca.png'),
                            width: 30,
                            height: 30,
                          )
                        ],
                      ),
                    ],
                  )),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sejumlah",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text("74.500"),
                    ],
                  )),
                ),
                Divider(
                  color: Colors.grey,
                ),
              ],
            )),
          ],
        )),
      ),
      persistentFooterButtons: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff5C40CC),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => tabbarpesanan()));
                      CoolAlert.show(
                        context: context,
                        type: CoolAlertType.success,
                        text: "Pesanan Berhasil",
                      );
                    },
                    child: Text(
                      " Cek Pesan",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        )
      ],
    );
  }
}

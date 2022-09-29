import 'package:flutter/material.dart';

import 'bayar.dart';

class metodeBca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5C40CC),
        title: Text("Transfer BCA"),
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(
                  bottom: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pesanan Kamu",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Detail ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff5C40CC)),
                            ))
                      ],
                    ),
                    Container(
                        child: Column(
                      children: [
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Icon(Icons.bus_alert_sharp),
                            Column(
                              children: [
                                Text("Bandung - Jakarta"),
                                Text("             Kamis,21 Juli 2022, 07:00"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ))
                  ],
                )),
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Metode Pembayran",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.comment_bank),
                    Text(
                      "    Transfer Bank(Bank Central Asia)",
                    )
                  ],
                ),
                SizedBox(height: 20),
                TextField(
                  cursorColor: Color(0xff5C40CC),
                  autofocus: true,
                  decoration: InputDecoration(
                    label: Text(
                      "Nama Pemilik Rekening",
                      style: TextStyle(color: Color(0xff5C40CC)),
                    ),

                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff5C40CC)),
                        borderRadius: BorderRadius.circular(5)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff5C40CC)),
                        borderRadius: BorderRadius.circular(5)),
                    // border:OutlineInputBorder (borderSide: BorderSide.),
                  ),
                ),
                SizedBox(height: 20),
                Text("Perhatian:",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(
                    "Anda bisa transfer dari layanan perbankkan apapun (internet\nbanking,SMS/M-Banking.ATM)"),
              ],
            ))
          ],
        ),
      )),
      persistentFooterButtons: [
        Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Toltal Harga",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp70.000",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.yellow),
                  ),
                ],
              ),
              Column(
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
                                  builder: (context) => transferBca()));
                        },
                        child: Text(
                          "Bayar",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

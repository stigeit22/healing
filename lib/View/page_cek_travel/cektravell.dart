import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healing_project/model/class_pic_loksi.dart';
import 'package:healing_project/widget/tiketoption.dart';
import 'package:timeline_tile/timeline_tile.dart';

class cektravell extends StatelessWidget {
  const cektravell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff5C40CC),
          title: Text("Cari Travell"),
          actions: [Icon(Icons.calendar_month)],
          bottom: PreferredSize(
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.only(
                    bottom: 5,
                    top: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 50,
                          width: 160,
                          color: Colors.grey[100],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        showSearch(
                                            context: context,
                                            delegate: Lokasitravel());
                                      },
                                      child: Text(
                                          " Titik awal \n Pilih titik awal",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black))),
                                ],
                              ),
                              Icon(Icons.arrow_drop_down),
                            ],
                          )),
                      Container(
                          height: 50,
                          width: 160,
                          color: Colors.grey[100],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        showSearch(
                                            context: context,
                                            delegate: Lokasitravel());
                                      },
                                      child: Text(
                                          " Titik awal \n Pilih titik tujuan",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black))),
                                ],
                              ),
                              Icon(Icons.arrow_drop_down),
                            ],
                          )),
                    ],
                  )),
              preferredSize: Size.fromHeight(60)),
        ),
        body: Container(
            color: Colors.grey[100],
            child: ListView(
              children: [
                Column(
                  children: [
                    tiketoption(
                        Ntravel: 'Berkah',
                        Jtravel: 'Regular',
                        harga: 'Rp80.000',
                        Jpergi: '09:20',
                        Jtiba: '12:00',
                        estimasi: '3jm',
                        Lawal: 'Terminal Guntur',
                        Ltujuan: 'Cipanas Garit',
                        link: 'DetailTravell'),
                    tiketoption(
                        Ntravel: 'Berkah',
                        Jtravel: 'Regular',
                        harga: 'Rp80.000',
                        Jpergi: '09:20',
                        Jtiba: '12:00',
                        estimasi: '3jm',
                        Lawal: 'Terminal Guntur',
                        Ltujuan: 'Cipanas Garit',
                        link: 'DetailTravell'),
                  ],
                )
              ],
            )),
        persistentFooterButtons: [
          Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                Row(
                  children: [
                    Icon(Icons.filter_sharp),
                    Text("Filter"),
                  ],
                ),
                VerticalDivider(
                  width: 10,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Icon(Icons.filter_sharp),
                    Text("Urutan"),
                  ],
                )
              ]))
        ]);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healing_project/Style/constrant.dart';
import 'package:healing_project/View/page_cek_travel/filter_travel.dart';
import 'package:healing_project/model/class_pic_loksi.dart';
import 'package:healing_project/widget/tiketoption.dart';
import 'package:timeline_tile/timeline_tile.dart';

class cektravell extends StatefulWidget {
  const cektravell({Key? key}) : super(key: key);

  @override
  State<cektravell> createState() => _cektravellState();
}

class _cektravellState extends State<cektravell> {
  bool check = false;
  bool check2 = false;
  bool check3 = false;

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
                    TextButton(
                      child: Text("Filter"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => filter_travel()));
                      },
                    ),
                  ],
                ),
                VerticalDivider(
                  width: 10,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Icon(Icons.filter_sharp),
                    TextButton(
                      child: Text("Urutkan"),
                      onPressed: () {
                        showalertdyalog("widget.title");
                      },
                    ),
                  ],
                )
              ]))
        ]);
  }

  void showalertdyalogFilter(String title) {
    showDialog(
        context: context,
        builder: (setState) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              title: Text("Filter Sesuai"),
              content: Container(
                height: 300,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Ac"),
                        Checkbox(
                            value: check,
                            checkColor: Colors.white,
                            focusColor: Colors.green,
                            activeColor: kpurple,
                            onChanged: (value) {
                              setState(() {
                                check = value!;
                              });
                            })
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Berangkat Lebih awal"),
                        Checkbox(
                            value: check2,
                            checkColor: Colors.white,
                            focusColor: Colors.green,
                            activeColor: kpurple,
                            onChanged: (value) {
                              setState(() {
                                check2 = value!;
                              });
                            })
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("ad"),
                        Checkbox(
                            value: check3,
                            checkColor: Colors.white,
                            focusColor: Colors.green,
                            activeColor: kpurple,
                            onChanged: (value) {
                              setState(() {
                                check3 = value!;
                              });
                            })
                      ],
                    )
                  ],
                ),
              ),
            );
          });
        });
  }

  void showalertdyalog(String title) {
    showDialog(
        context: context,
        builder: (setState) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              title: Text("Filter Sesuai"),
              content: Container(
                height: 300,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Termurah"),
                        Checkbox(
                            value: check,
                            checkColor: Colors.white,
                            focusColor: Colors.green,
                            activeColor: kpurple,
                            onChanged: (value) {
                              setState(() {
                                check = value!;
                              });
                            })
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Berangkat Paling Awal"),
                        Checkbox(
                            value: check2,
                            checkColor: Colors.white,
                            focusColor: Colors.green,
                            activeColor: kpurple,
                            onChanged: (value) {
                              setState(() {
                                check2 = value!;
                              });
                            })
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Berangkat Paling Akhir"),
                        Checkbox(
                            value: check3,
                            checkColor: Colors.white,
                            focusColor: Colors.green,
                            activeColor: kpurple,
                            onChanged: (value) {
                              setState(() {
                                check3 = value!;
                              });
                            })
                      ],
                    )
                  ],
                ),
              ),
            );
          });
        });
  }
}

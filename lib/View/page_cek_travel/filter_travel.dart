import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:healing_project/style/constrant.dart';

class filter_travel extends StatefulWidget {
  const filter_travel({super.key});

  @override
  State<filter_travel> createState() => _filter_travelState();
}

class _filter_travelState extends State<filter_travel> {
  bool check = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;
  bool check5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Filter'),
          backgroundColor: kpurple,
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text("Filter Berdasarkan"),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Waktu Berangkat",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [Text("Pagi"), Text('00.00-11.00')],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [Text("Siang"), Text('11.00-15.00')],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [Text("Sore"), Text('15.00-18.30')],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [Text("Malam"), Text('18.30-23.59')],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Waktu Berangkat",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [Text("Pagi"), Text('00.00-11.00')],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [Text("Siang"), Text('11.00-15.00')],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [Text("Sore"), Text('15.00-18.30')],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [Text("Malam"), Text('18.30-23.59')],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fasilitas",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Checkbox(value: check, onChanged: ((value) {})),
                          Text("Ac")
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(value: check2, onChanged: ((value) {})),
                          Text("Reaclinig Seat")
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(value: check3, onChanged: ((value) {})),
                          Text("Power Suply")
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(value: check4, onChanged: ((value) {})),
                          Text("Wifi")
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Agen Bus & Travel",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Checkbox(value: check5, onChanged: ((value) {})),
                          Text("KPM Trans")
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        persistentFooterButtons: [
          Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton(
                child: Text("Reset"),
                onPressed: () {},
              ),
              VerticalDivider(
                width: 10,
                color: Colors.grey,
              ),
              TextButton(
                child: Text("Simpan"),
                onPressed: () {},
              ),
            ],
          ))
        ]);
  }
}

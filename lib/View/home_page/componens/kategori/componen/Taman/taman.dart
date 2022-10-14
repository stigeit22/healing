import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healing_project/View/home_page/componens/headder/search.dart';

import 'package:healing_project/View/home_page/componens/headder/title.dart';
import 'package:healing_project/model/class_wisata_pegunungan.dart';
import 'package:healing_project/style/constrant.dart';

import '../optionWisata.dart';

class taman extends StatefulWidget {
  const taman({Key? key}) : super(key: key);

  @override
  State<taman> createState() => _tamanState();
}

class _tamanState extends State<taman> {
  final controller = TextEditingController();
  List<Wisata_Pegunungan> pegunungan = allWisata_Pegunungan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Wisata Hutan",
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontFamily: "font/Poppins--SemiBold",
                fontWeight: FontWeight.bold),
          ),
          actions: [
            PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(child: Text("Share")),
                      PopupMenuItem(child: Text("Share"))
                    ])
          ],
          backgroundColor: kpurple,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Color(0xffEBEBEB),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    cursorColor: kpurple,
                    controller: controller,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: "fonts/Poppins-Medium.ttf",
                            fontWeight: FontWeight.bold),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        hintText: "Telusuri",
                        border: InputBorder.none),
                    onChanged: searchLokasi,
                  )),
              Expanded(
                child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: ListView.builder(
                      itemCount: pegunungan.length,
                      itemBuilder: (context, index) {
                        final Wisata_Pegunungan = pegunungan[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, Wisata_Pegunungan.link);
                          },
                          child: Container(
                            height: 120,
                            width: double.infinity,
                            decoration:
                                BoxDecoration(color: Colors.white, boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade800,
                              )
                            ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(right: 10, left: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            Wisata_Pegunungan.nomer,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xff1F1449),
                                                fontFamily:
                                                    "fonts/Poppins-Medium.ttf"),
                                          ),
                                          Container(
                                            width: 140,
                                            height: 90,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        Wisata_Pegunungan
                                                            .imageUrl),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                Wisata_Pegunungan.title,
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Color(0xff1F1449),
                                                    fontFamily:
                                                        "fonts/Poppins-Medium.ttf"),
                                              ),
                                              Text(
                                                Wisata_Pegunungan.lokasi,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff9698A9),
                                                    fontFamily:
                                                        "fonts/Poppins-Light.ttf"),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star, color: Colors.yellow),
                                      Text(
                                        Wisata_Pegunungan.rate,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff1F1449),
                                            fontFamily:
                                                "fonts/Poppins-Medium.ttf"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )),
              ),
            ],
          ),
        ));
  }

  void searchLokasi(String query) {
    final suggestions = allWisata_Pegunungan.where((Wisata_Pegunungan) {
      final WisataTitle = Wisata_Pegunungan.title.toLowerCase();
      final input = query.toLowerCase();
      return WisataTitle.contains(input);
    }).toList();
    setState(() => pegunungan = suggestions);
  }
}

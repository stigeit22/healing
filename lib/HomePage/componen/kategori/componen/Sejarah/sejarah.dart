import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healing_project/HomePage/componen/headder/search.dart';

import 'package:healing_project/HomePage/componen/headder/title.dart';

import '../optionWisata.dart';

class sejarah extends StatefulWidget {
  const sejarah({Key? key}) : super(key: key);

  @override
  State<sejarah> createState() => _sejarahState();
}

class _sejarahState extends State<sejarah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Tempat Bersejarah",
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontFamily: "font/Poppins--SemiBold",
                fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Search()));
              },
            )
          ],
          backgroundColor: Color(0xff5C40CC),
        ),
        body: Container(
            child: ListView(
          children: [
            Column(children: [
              OptionWisata(
                  nomer: "1.  ",
                  imageUrl: "images/SabdaAlam.jpeg",
                  title: "Wisata\nSabda Alam",
                  lokasi: "Garut",
                  rate: "55",
                  link: "detailpage"),
              SizedBox(
                height: 10,
              ),
              OptionWisata(
                  nomer: "2.  ",
                  imageUrl: "images/Ctaraje.png",
                  title: "Wisata\nCurug Taraje",
                  lokasi: "Garut ",
                  rate: "52",
                  link: "detailpage"),
              SizedBox(
                height: 10,
              ),
              OptionWisata(
                  nomer: "3.  ",
                  imageUrl: "images/Ljurig.jpeg",
                  title: "Wisata\nLewi Juig",
                  lokasi: "Garut ",
                  rate: "55",
                  link: "detailpage"),
              SizedBox(
                height: 10,
              ),
              OptionWisata(
                  nomer: "4.  ",
                  imageUrl: "images/pantairancabuaya.jpg",
                  title: "Pantai\nRanca Buaya",
                  lokasi: "Garut Slatan",
                  rate: "55",
                  link: "detailpage"),
              SizedBox(
                height: 10,
              ),
              OptionWisata(
                  nomer: "5.  ",
                  imageUrl: "images/Psayangheulang.jpeg",
                  title: "Pantai\nsayang heulang",
                  lokasi: "Garut Slatan",
                  rate: "55",
                  link: "detailpage"),
              SizedBox(
                height: 10,
              ),
              OptionWisata(
                  nomer: "6.  ",
                  imageUrl: "images/Gpapandayan.jpg",
                  title: "Gunung\nPapandayan",
                  lokasi: "Garut Slatan",
                  rate: "55",
                  link: "detailpage"),
              SizedBox(
                height: 10,
              ),
              OptionWisata(
                  nomer: "7.  ",
                  imageUrl: "images/situbagendit.jpg",
                  title: "Situ Bagendit",
                  lokasi: "Garut Slatan",
                  rate: "55",
                  link: "detailpage"),
              SizedBox(
                height: 10,
              ),
              OptionWisata(
                  nomer: "8.  ",
                  imageUrl: "images/SabdaAlam.jpeg",
                  title: "Sabda Alam",
                  lokasi: "Garut",
                  rate: "55",
                  link: "detailpage"),
              SizedBox(
                height: 10,
              ),
              OptionWisata(
                  nomer: "9.  ",
                  imageUrl: "images/Talagabodas.jpg",
                  title: "Talaga Bodas",
                  lokasi: "Garut Slatan",
                  rate: "55",
                  link: "link"),
            ])
          ],
        )));
  }
}

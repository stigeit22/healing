import 'package:flutter/material.dart';
import 'package:healing_project/View/home_page/componens/Populer/PopulerOption.dart';
import 'package:healing_project/View/home_page/componens/headder/title.dart';

class pupuler extends StatefulWidget {
  const pupuler({Key? key}) : super(key: key);

  @override
  State<pupuler> createState() => _pupulerState();
}

class _pupulerState extends State<pupuler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: ListView(
      children: [
        Column(children: [
          PopulerOption(
              nomer: "1.  ",
              imageUrl: "images/SabdaAlam.jpeg",
              title: "Wisata\nSabda Alam",
              lokasi: "Garut",
              rate: "55",
              link: "detailpage"),
          SizedBox(
            height: 10,
          ),
          PopulerOption(
              nomer: "2.  ",
              imageUrl: "images/Ctaraje.png",
              title: "Wisata\nCurug Taraje",
              lokasi: "Garut ",
              rate: "52",
              link: "detailpage"),
          SizedBox(
            height: 10,
          ),
          PopulerOption(
              nomer: "3.  ",
              imageUrl: "images/Ljurig.jpeg",
              title: "Wisata\nLewi Juig",
              lokasi: "Garut ",
              rate: "55",
              link: "link"),
          SizedBox(
            height: 10,
          ),
          PopulerOption(
              nomer: "4.  ",
              imageUrl: "images/pantairancabuaya.jpg",
              title: "Pantai\nRanca Buaya",
              lokasi: "Garut Slatan",
              rate: "55",
              link: "link"),
          SizedBox(
            height: 10,
          ),
          PopulerOption(
              nomer: "5.  ",
              imageUrl: "images/Psayangheulang.jpeg",
              title: "Pantai\nsayang heulang",
              lokasi: "Garut Slatan",
              rate: "55",
              link: "link"),
          SizedBox(
            height: 10,
          ),
          PopulerOption(
              nomer: "6.  ",
              imageUrl: "images/Gpapandayan.jpg",
              title: "Gunung\nPapandayan",
              lokasi: "Garut Slatan",
              rate: "55",
              link: "link"),
          SizedBox(
            height: 10,
          ),
          PopulerOption(
              nomer: "7.  ",
              imageUrl: "images/situbagendit.jpg",
              title: "Situ Bagendit",
              lokasi: "Garut Slatan",
              rate: "55",
              link: "link"),
          SizedBox(
            height: 10,
          ),
          PopulerOption(
              nomer: "8.  ",
              imageUrl: "images/SabdaAlam.jpeg",
              title: "Sabda Alam",
              lokasi: "Garut",
              rate: "55",
              link: "link"),
          SizedBox(
            height: 10,
          ),
          PopulerOption(
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

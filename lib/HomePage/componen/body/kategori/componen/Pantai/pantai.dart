import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:healing_project/HomePage/componen/headder/title.dart';

import '../optionWisata.dart';



class pantai extends StatefulWidget {
  const pantai({Key? key}) : super(key: key);

  @override
  State<pantai> createState() => _pantaiState();
}

class _pantaiState extends State<pantai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          leading: IconButton(
              onPressed: () {
                Get.toNamed('pagekategori');
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: Text(
            "Wisata Pantai",
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
            onPressed: () {Get.toNamed("Search");},
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
              imageUrl: "images/pantairancabuaya.jpg",
              title: "Pantai \nRanca Buaya",
              lokasi: "Garut",
              rate: "55",
              link: "detailpage"),
          SizedBox(
            height: 10,
          ),
         OptionWisata(
              nomer: "2.  ",
              imageUrl: "images/pbodas.jpg",
              title: "Pantai \nCibodas",
              lokasi: "Garut ",
              rate: "52",
              link: "detailpage"),
          SizedBox(
            height: 10,
          ),
          OptionWisata(
              nomer: "3.  ",
              imageUrl: "images/pcicalobak.jpg",
              title: "Pantai \nCicalobak",
              lokasi: "Garut ",
              rate: "55",
              link: "link"),
          SizedBox(
            height: 10,
          ),
          OptionWisata(
              nomer: "4.  ",
              imageUrl: "images/pcidora.jpg",
              title: "Pantai\nRanca Buaya",
              lokasi: "Garut Slatan",
              rate: "55",
              link: "link"),
          SizedBox(
            height: 10,
          ),
          OptionWisata(
              nomer: "5.  ",
              imageUrl: "images/Psayangheulang.jpeg",
              title: "Pantai\nsayang heulang",
              lokasi: "Garut Slatan",
              rate: "55",
              link: "link"),
          SizedBox(
            height: 10,
          ),
          OptionWisata(
              nomer: "6.  ",
              imageUrl: "images/pcijayana.jpg",
              title: "Pantai\nCijayana",
              lokasi: "Garut Slatan",
              rate: "55",
              link: "link"),
          SizedBox(
            height: 10,
          ),
          OptionWisata(
              nomer: "7.  ",
              imageUrl: "images/pcijeruk.jpg",
              title: "Pantai\nCi Jeruk",
              lokasi: "Garut Slatan",
              rate: "55",
              link: "link"),
          SizedBox(
            height: 10,
          ),
          OptionWisata(
              nomer: "8.  ",
              imageUrl: "images/pcitanggeuleuk.jpg",
              title: "Pantai\nCitanggeuleuk",
              lokasi: "Garut",
              rate: "55",
              link: "link"),
          SizedBox(
            height: 10,
          ),
          OptionWisata(
              nomer: "9.  ",
              imageUrl: "images/pgununggeder.jpg",
              title: "Pantai\nGunung Geder",
              lokasi: "Garut Slatan",
              rate: "55",
              link: "link"),
               SizedBox(
            height: 10,
          ),
          OptionWisata(
              nomer: "10.  ",
              imageUrl: "images/pmanalusu.jpg",
              title: "Pantai\nManalusu",
              lokasi: "Garut Slatan",
              rate: "55",
              link: "link"),
               SizedBox(
            height: 10,
          ),
          OptionWisata(
              nomer: "11.  ",
              imageUrl: "images/ppakpak.jpg",
              title: "Pantai\nKarang PakPak",
              lokasi: "Garut Slatan",
              rate: "55",
              link: "link"),
               SizedBox(
            height: 10,
          ),
          OptionWisata(
              nomer: "12.  ",
              imageUrl: "images/pparanje.jpg",
              title: "Pantai\nKarang Paranje",
              lokasi: "Garut Slatan",
              rate: "55",
              link: "link"),
               SizedBox(
            height: 10,
          ),
          OptionWisata(
              nomer: "13.  ",
              imageUrl: "images/ppuncakguha.jpg",
              title: "Pantai\nPuncak Guha",
              lokasi: "Garut Slatan",
              rate: "55",
              link: "link"),
               SizedBox(
            height: 10,
          ),
          OptionWisata(
              nomer: "14.  ",
              imageUrl: "images/psancang.jpg",
              title: "Pantai Karang \nSancang",
              lokasi: "Garut Slatan",
              rate: "55",
              link: "link"),
               SizedBox(
            height: 10,
          ),
          OptionWisata(
              nomer: "15.  ",
              imageUrl: "images/psebrotan.jpg",
              title: "PantaiKarang \nSebrotan",
              lokasi: "Garut Slatan",
              rate: "55",
              link: "link"),
        ])
      ],
    )));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healing_project/HomePage/componen/headder/search.dart';

import 'package:healing_project/HomePage/componen/headder/title.dart';

import '../optionWisata.dart';

class kuliner extends StatefulWidget {
  const kuliner({Key? key}) : super(key: key);

  @override
  State<kuliner> createState() => _kulinerState();
}

class _kulinerState extends State<kuliner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Wisata Kuliner",
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
                  imageUrl: "images/kceplak.jpg",
                  title: "Kuliner\nCeplak",
                  lokasi: "Garut",
                  rate: "55",
                  link: "detailpage"),
              SizedBox(
                height: 10,
              ),
              OptionWisata(
                  nomer: "2.  ",
                  imageUrl: "images/kcibuk.jpg",
                  title: "Kuliner\nRM Cibiuk",
                  lokasi: "Garut ",
                  rate: "52",
                  link: "detailpage"),
              SizedBox(
                height: 10,
              ),
              OptionWisata(
                  nomer: "3.  ",
                  imageUrl: "images/kcobek.jpg",
                  title: "Kuliner RM Cbek\nCangkuang",
                  lokasi: "Garut ",
                  rate: "55",
                  link: "detailpage"),
              SizedBox(
                height: 10,
              ),
              OptionWisata(
                  nomer: "4.  ",
                  imageUrl: "images/kesgoyobod.jpg",
                  title: "Kuliner\nES Goyobod",
                  lokasi: "Garut ",
                  rate: "55",
                  link: "detailpage"),
              SizedBox(
                height: 10,
              ),
              OptionWisata(
                  nomer: "5.  ",
                  imageUrl: "images/klounghe.jpg",
                  title: "Kuliner\nCargo Kitchen",
                  lokasi: "Garut ",
                  rate: "55",
                  link: "detailpage"),
              SizedBox(
                height: 10,
              ),
              OptionWisata(
                  nomer: "6.  ",
                  imageUrl: "images/kmuarasunda.jpg",
                  title: "Kuliner RM\nMuara Sunda",
                  lokasi: "Garut ",
                  rate: "55",
                  link: "detailpage"),
              SizedBox(
                height: 10,
              ),
              OptionWisata(
                  nomer: "7.  ",
                  imageUrl: "images/knasistobery.jpg",
                  title: "Kuliner\nNasi Liwet AS",
                  lokasi: "Garut ",
                  rate: "55",
                  link: "detailpage"),
              SizedBox(
                height: 10,
              ),
              OptionWisata(
                  nomer: "8.  ",
                  imageUrl: "images/kpananjung.jpg",
                  title: "Kuliner\nRM Pananjung",
                  lokasi: "Garut",
                  rate: "55",
                  link: "detailpage"),
              SizedBox(
                height: 10,
              ),
              OptionWisata(
                  nomer: "9.  ",
                  imageUrl: "images/kpujasega.jpg",
                  title: "Kuliner Restoran\nPujasega",
                  lokasi: "Garut ",
                  rate: "55",
                  link: "detailpage"),
              OptionWisata(
                  nomer: "10.  ",
                  imageUrl: "images/kracikdesa.jpg",
                  title: "Kuliner\nRacik Desa",
                  lokasi: "Garut ",
                  rate: "55",
                  link: "link"),
              OptionWisata(
                  nomer: "11.  ",
                  imageUrl: "images/kramen.jpg",
                  title: "Kuliner\nRamen Golrila",
                  lokasi: "Garut ",
                  rate: "55",
                  link: "detailpage"),
              OptionWisata(
                  nomer: "12.  ",
                  imageUrl: "images/ksate.jpg",
                  title: "Kuliner\nSate Maranggi ",
                  lokasi: "Garut ",
                  rate: "55",
                  link: "detailpage"),
            ])
          ],
        )));
  }
}

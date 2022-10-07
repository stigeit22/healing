import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:healing_project/HomePage/componen/body/Lokasi/componen/optionlokasi.dart';
import 'package:healing_project/HomePage/componen/headder/componen/classWisata.dart';

class pageLokasi extends StatefulWidget {
  const pageLokasi({Key? key}) : super(key: key);

  @override
  State<pageLokasi> createState() => _pageLokasiState();
}

class _pageLokasiState extends State<pageLokasi> {
  List<Wisata> wisata = allWisata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Container(
          margin: EdgeInsets.only(top: 10),
          child: ListView.builder(
            itemCount: wisata.length,
            itemBuilder: (context, index) {
              final Wisata = wisata[index];
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(Wisata.imageUrl),
                            fit: BoxFit.cover)),
                    height: 132,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Wisata.title,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            Wisata.lokasi,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    )),
              );
              // ListTile(

              //   style: ListTileStyle.drawer,
              //   onTap: () {
              //     Navigator.pushNamed(context, Wisata.link);
              //   },
              //   leading: Image(image: AssetImage(Wisata.imageUrl)),
              //   title: Text(
              //     Wisata.title,
              //     textAlign: TextAlign.start,
              //   ),
              //   subtitle: Text(Wisata.lokasi),
              // );
            },
          )),
    ));
  }
}

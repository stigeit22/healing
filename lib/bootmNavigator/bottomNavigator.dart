import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healing_project/HomePage/componen/body/Lokasi/pageLokasi.dart';
import 'package:healing_project/booking/Pagebooking.dart';
import 'package:healing_project/pesanan/component/tabbarpesanan.dart';
import 'package:healing_project/pesanan/pesanan.dart';

import '../HomePage/componen/body/Etika/panduan.dart';
import '../HomePage/componen/body/Populer/pagePopuler.dart';
import '../HomePage/componen/body/history/history.dart';
import '../HomePage/componen/body/kategori/pagekategori.dart';
import '../HomePage/componen/headder/tabbar.dart';
import 'dart:async';

import '../UserSeting/Profil/profil.dart';
import '../UserSeting/signUp/signup.dart';

class buttomNavigator extends StatefulWidget {
  buttomNavigator({Key? key}) : super(key: key);

  @override
  State<buttomNavigator> createState() => _buttomNavigatorState();
}

class _buttomNavigatorState extends State<buttomNavigator> {
  late int index;
  List pages = [
    tabbar(),
    pagebooking(),
    tabbarpesanan(),
    Profil(),
  ];
  @override
  void initState() {
    index = 0;
    super.initState();
  }

  Future<bool> showWarning(BuildContext context) async {
    bool exitapp = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Realyy"),
            content: Text("Do you want to close the app??"),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text("No")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text("Yes"))
            ],
          );
        });
    return exitapp;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showWarning(context),
      child: Scaffold(
          body: pages[index],
          bottomNavigationBar: ConvexAppBar(
            color: Colors.black,
            activeColor: Colors.black,
            style: TabStyle.react,
            backgroundColor: Color(0xffD9D9D9),
            items: [
              TabItem(icon: Icons.home, title: "Home"),
              TabItem(icon: Icons.car_rental, title: "Booking"),
              TabItem(icon: Icons.email, title: "Pesanan"),
              TabItem(icon: Icons.person, title: "Profil"),
            ],
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
          )),
    );
  }
}

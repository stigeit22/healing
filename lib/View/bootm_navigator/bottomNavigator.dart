import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healing_project/Style/constrant.dart';
import 'package:healing_project/View/home_page/componens/Lokasi/pageLokasi.dart';
import 'package:healing_project/View/booking/page_booking.dart';
import 'package:healing_project/View/pesanan/tabbarpesanan.dart';
import 'package:healing_project/View/user_setting/Profil/profil.dart';
import '../home_page/componens/Populer/pagePopuler.dart';
import '../home_page/componens/history/history.dart';
import '../home_page/componens/kategori/pagekategori.dart';
import '../home_page/componens/headder/tabbar.dart';
import 'dart:async';

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
            activeColor: kpurple,
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

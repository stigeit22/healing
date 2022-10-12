import 'package:flutter/material.dart';
import 'package:healing_project/View/pesanan/componens/pesananaktif.dart';
import 'package:healing_project/View/pesanan/componens/pesananbatal.dart';
import 'package:healing_project/View/pesanan/componens/pesananselesai.dart';

class tabbarpesanan extends StatefulWidget {
  const tabbarpesanan({Key? key}) : super(key: key);

  @override
  State<tabbarpesanan> createState() => _tabbarpesananState();
}

class _tabbarpesananState extends State<tabbarpesanan>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesanan'),
        backgroundColor: Color(0xff5C40CC),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    TabBar(
                      labelStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: "fonts/Poppins-Medium.ttf",
                          fontWeight: FontWeight.bold),
                      labelColor: Colors.black,
                      indicatorColor: Colors.black,
                      controller: tabController,
                      tabs: [
                        Tab(
                          text: "Aktif",
                        ),
                        Tab(
                          text: "Selesai",
                        ),
                        Tab(
                          text: "Dibatalkan",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: <Widget>[aktif(), selesai(), batal()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

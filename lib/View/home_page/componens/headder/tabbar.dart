import 'package:flutter/material.dart';
import 'package:healing_project/View/home_page/componens/Lokasi/pageLokasi.dart';
import 'package:healing_project/View/home_page/componens/Populer/pagePopuler.dart';
import 'package:healing_project/View/home_page/componens/Untuk%20Anda/untukAnda.dart';
import 'package:healing_project/style/constrant.dart';

import '../kategori/pagekategori.dart';
import 'title.dart';

class tabbar extends StatefulWidget {
  const tabbar({Key? key}) : super(key: key);

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              title(),
              Container(
                child: Column(
                  children: [
                    TabBar(
                      labelStyle: TextStyle(
                          fontSize: 15,
                          fontFamily: "fonts/Poppins-Medium.ttf",
                          fontWeight: FontWeight.bold),
                      labelColor: kpurple,
                      unselectedLabelColor: Colors.black,
                      indicatorColor: kpurple,
                      indicatorWeight: 3.1,
                      controller: tabController,
                      tabs: [
                        Tab(
                          text: "Untuk Anda",
                        ),
                        Tab(
                          text: "Populer",
                        ),
                        Tab(
                          text: "Lokasi",
                        ),
                        Tab(
                          text: "Kategori",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: <Widget>[
                    untukAnda(),
                    pupuler(),
                    pageLokasi(),
                    pagekategori(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

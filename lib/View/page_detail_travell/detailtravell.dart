import 'package:flutter/material.dart';
import 'package:healing_project/View/page_detail_travell/page_tabbar/fitur.dart';
import 'package:healing_project/View/page_detail_travell/page_tabbar/rute.dart';

import '../page_pembayaran/datapemesan.dart';
import 'page_tabbar/ticket.dart';

class DetailTravell extends StatefulWidget {
  const DetailTravell({Key? key}) : super(key: key);

  @override
  State<DetailTravell> createState() => _DetailTravellState();
}

class _DetailTravellState extends State<DetailTravell>
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
        title: Text("Detail Travell"),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                        child: TextButton(
                            onPressed: () {
                              //Navigator.push(context,MaterialPageRoute(builder: (context)=> MapSample()));
                            },
                            child: Text('about'))),
                    PopupMenuItem(child: Text("Share"))
                  ])
        ],
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
                      labelColor: Colors.black,
                      indicatorColor: Color(0xff5C40CC),
                      controller: tabController,
                      tabs: [
                        Tab(
                          text: "Fitur",
                        ),
                        Tab(
                          text: "Rute",
                        ),
                        Tab(
                          text: "Ticket",
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
                    fitureDetail(),
                    RuteDetail(),
                    Ticket(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Rp70.000",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow),
                      ),
                      Text(
                        "per orang",
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),

                    height: 50,
                    width: 100,
                    //color: Colors.black,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff5C40CC),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => datapemesan()));
                            },
                            child: Text(
                              "Pesan",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

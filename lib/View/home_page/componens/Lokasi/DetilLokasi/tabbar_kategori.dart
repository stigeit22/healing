import 'package:flutter/material.dart';
import 'package:healing_project/Style/constrant.dart';
import 'package:healing_project/View/home_page/componens/Lokasi/DetilLokasi/lokasikecamatan.dart';
import 'package:healing_project/View/pesanan/componens/pesananaktif.dart';
import 'package:healing_project/View/pesanan/componens/pesananbatal.dart';
import 'package:healing_project/View/pesanan/componens/pesananselesai.dart';

class tabbar_kategori extends StatefulWidget {
  const tabbar_kategori({Key? key}) : super(key: key);

  @override
  State<tabbar_kategori> createState() => _tabbar_kategoriState();
}

class _tabbar_kategoriState extends State<tabbar_kategori>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 8, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata'),
        backgroundColor: Color(0xff5C40CC),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 10, top: 15),
                  decoration: BoxDecoration(
                    color: Color(0xffEBEBEB),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    cursorColor: Color(0xff5C40CC),
                    controller: controller,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: "fonts/Poppins-Medium.ttf",
                            fontWeight: FontWeight.bold),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        hintText: "Telusuri",
                        border: InputBorder.none),
                    // onChanged: searchLokasi,
                  )),
              Container(
                child: Column(
                  children: [
                    TabBar(
                      isScrollable: true,
                      labelStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: "fonts/Poppins-Medium.ttf",
                          fontWeight: FontWeight.bold),
                      labelColor: kpurple,
                      unselectedLabelColor: Colors.black,
                      indicatorColor: kpurple,
                      indicatorWeight: 3.1,
                      controller: tabController,
                      tabs: [
                        Tab(
                          text: "Semua",
                        ),
                        Tab(
                          text: "Gunung",
                        ),
                        Tab(
                          text: "Pantai",
                        ),
                        Tab(
                          text: "Kuliner",
                        ),
                        Tab(
                          text: "Hutan",
                        ),
                        Tab(
                          text: "Edukasi",
                        ),
                        Tab(
                          text: "Sejarah",
                        ),
                        Tab(
                          text: "Taman",
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
                    WisataKecamatan(),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1')
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

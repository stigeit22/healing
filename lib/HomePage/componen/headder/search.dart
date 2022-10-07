import 'package:flutter/material.dart';
import 'componen/classWisata.dart';

class Search extends StatefulWidget {
  // const Search({Key? key}) : super(key: key);
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final controller = TextEditingController();
  List<Wisata> wisata = allWisata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Temukan & Jelajahi"),
        backgroundColor: Color(0xff5C40CC),
        // backgroundColor: Colors.white,
        // leading: Icon(
        //   Icons.arrow_back,
        //   color: Colors.black,
        // ),
        // actions: [
        //   TextButton(
        //       onPressed: () {
        //         Get.toNamed("Asal_lokasi");
        //       },
        //       child: Text(
        //         "Batal",
        //         style: TextStyle(color: Colors.black),
        //       ))
        // ],
        // title: Container(
        //   padding: EdgeInsets.only(top: 10, bottom: 10),
        //   height: 75,
        //   child: TextField(
        //     controller: controller,
        //     autofocus: false,
        //     cursorColor: Color(0xff5C40CC),
        //     decoration: InputDecoration(
        //         focusColor: Colors.grey,
        //         prefixIcon: Icon(Icons.search, color: Colors.grey),
        //         hintText: "Cari Wisata",
        //         border: OutlineInputBorder(
        //             borderRadius: BorderRadius.circular(20),
        //             borderSide: BorderSide(color: Colors.black))),
        //     onChanged: searchLokasi,
        //   ),
        // ),
        // bottom: PreferredSize(
        //     child: Container(
        //         margin: EdgeInsets.only(
        //           top: 1,
        //           left: 20,
        //         ),
        //         padding: EdgeInsets.only(
        //           bottom: 5,
        //         ),
        //         child: Row(
        //           children: [
        //             Container(
        //                 child: Icon(Icons.location_searching,
        //                     color: Colors.black)),
        //             Container(
        //               margin: EdgeInsets.only(
        //                 left: 10,
        //               ),
        //               child: Text("Jelajahi Wisata",
        //                   style: TextStyle(
        //                       color: Color(0xff5C40CC), fontSize: 15)),
        //             ),
        //           ],
        //         )),
        //     preferredSize: Size.fromHeight(40)),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wisata Terbaik',
              style: TextStyle(fontSize: 24, color: Color(0xff5C40CC)),
            ),
            Text(
              'Di Kota Garut',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Container(
                decoration: BoxDecoration(
                    color: Color(0xffEBEBEB),
                    borderRadius: BorderRadius.circular(5)),
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
                  onChanged: searchLokasi,
                )),
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: ListView.builder(
                    itemCount: wisata.length,
                    itemBuilder: (context, index) {
                      final Wisata = wisata[index];
                      return ListTile(
                        style: ListTileStyle.drawer,
                        onTap: () {
                          Navigator.pushNamed(context, Wisata.link);
                        },
                        leading: Image(image: AssetImage(Wisata.imageUrl)),
                        title: Text(
                          Wisata.title,
                          textAlign: TextAlign.start,
                        ),
                        subtitle: Text(Wisata.lokasi),
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }

  void searchLokasi(String query) {
    final suggestions = allWisata.where((Wisata) {
      final WisataTitle = Wisata.title.toLowerCase();
      final input = query.toLowerCase();
      return WisataTitle.contains(input);
    }).toList();
    setState(() => wisata = suggestions);
  }
}

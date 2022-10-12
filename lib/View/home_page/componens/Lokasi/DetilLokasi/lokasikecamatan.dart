import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:healing_project/model/classWisata.dart';
import 'package:healing_project/model/class_pic_loksi.dart';
import 'package:healing_project/model/class_wisata_pegunungan.dart';

class WisataKecamatan extends StatefulWidget {
  const WisataKecamatan({super.key});
  @override
  State<WisataKecamatan> createState() => _WisataKecamatanState();
}

class _WisataKecamatanState extends State<WisataKecamatan> {
  final controller = TextEditingController();
  List<Wisata_Pegunungan> pegunungan = allWisata_Pegunungan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Wisata Tarogong Kidul'),
          backgroundColor: Color(0xff5C40CC),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                height: 75,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white, //color of shadow
                      spreadRadius: 0.2, //spread radius
                      blurRadius: 3, // blur radius
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
                child: Container(
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
                      onChanged: searchLokasi,
                    )),
              ),
              Divider(
                color: Colors.grey,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                    itemCount: pegunungan.length,
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 30,
                        crossAxisCount: 2),
                    itemBuilder: (context, indext) {
                      final Wisata_Pegunungan = pegunungan[indext];
                      return GridTile(
                        child: GestureDetector(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 125,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              Wisata_Pegunungan.imageUrl),
                                          fit: BoxFit.cover)),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Wisata_Pegunungan.title,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xff1F1449),
                                            fontFamily:
                                                "fonts/Poppins-Medium.ttf"),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            Wisata_Pegunungan.lokasi,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff9698A9),
                                                fontFamily:
                                                    "fonts/Poppins-Light.ttf"),
                                          ),
                                          Container(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15,
                                                ),
                                                Text(
                                                  Wisata_Pegunungan.rate,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0xff1F1449),
                                                      fontFamily:
                                                          "fonts/Poppins-Medium.ttf"),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(
                                context, Wisata_Pegunungan.link);
                          },
                        ),
                      );
                    }),
              ))
            ],
          ),
        ));
  }

  void searchLokasi(String query) {
    final suggestions = allWisata_Pegunungan.where((Wisata_Pegunungan) {
      final WisataTitle = Wisata_Pegunungan.title.toLowerCase();
      final input = query.toLowerCase();
      return WisataTitle.contains(input);
    }).toList();
    setState(() => pegunungan = suggestions);
  }
}

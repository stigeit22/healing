import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:healing_project/HomePage/componen/headder/componen/classWisata.dart';
import 'package:healing_project/booking/PageCekTravel.dart/componen/classlokasi.dart';

class WisataKecamatan extends StatefulWidget {
  const WisataKecamatan({super.key});
  @override
  State<WisataKecamatan> createState() => _WisataKecamatanState();
}
class _WisataKecamatanState extends State<WisataKecamatan> {
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    List<Wisata> wisata = allWisata;
    List<Container> mylist;
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 75,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white, //color of shadow
                      spreadRadius: 0.2, //spread radius
                      blurRadius: 3, // blur radius
                      offset: Offset(0, 1), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
                child: Container(
                    margin: EdgeInsets.all(20),
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
              ),
              Expanded(
                  child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 10),
                      children: List.generate(
                        42,
                        (index) {
                          final Wisata = wisata[index];

                          return Container(
                            child: GestureDetector(
                              child: Column(
                                children: [
                                  Container(
                                    height: 125,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(Wisata.imageUrl),
                                            fit: BoxFit.cover)),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Wisata.title,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        Wisata.lokasi,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, Wisata.link);
                              },
                            ),
                          );
                        },
                      )))
            ],
          ),
        ));
  }

  void searchLokasi(String query) {
    final suggestions = allWisata.where((Wisata) {
      final WisataTitle = Wisata.title.toLowerCase();
      final input = query.toLowerCase();
      return WisataTitle.contains(input);
    }).toList();
     setState(() {
      
       
     });
  }
}

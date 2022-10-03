import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:healing_project/widget/homeOption.dart';

class untukAnda extends StatelessWidget {
  //const untukAnda({Key? key}) : super(key: key);
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> imagepromo = [
    Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/iklandarajat2.jpg"),
                fit: BoxFit.cover))),
    Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/iklandarajat2.jpg"),
                fit: BoxFit.cover))),
    Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/iklandarajat2.jpg"),
                fit: BoxFit.cover)))
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  CarouselSlider(
                    items: imagepromo,
                    carouselController: _controller,
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 3.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imagepromo.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),
                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            'Disarankan untuk Anda',
                            style: TextStyle(
                                fontFamily: "Poppins-SemiBold.ttf",
                                fontSize: 18,
                                color: Color(0xff1F1449)),
                          )),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                homeOption(
                                  link: "detailpage",
                                  imageUrl: "images/SabdaAlam.jpeg",
                                  title: "Sabda Alam",
                                  lokasi: "Tarogong Kidul",
                                  rate: "57",
                                ),
                                Row(
                                  children: <Widget>[
                                    homeOption(
                                      link: "detailpage",
                                      imageUrl: "images/Ljurig.jpeg",
                                      title: "Lewi Jurig",
                                      lokasi: "Garut ",
                                      rate: "54",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    homeOption(
                                      link: "detailpage",
                                      imageUrl: "images/Ctaraje.png",
                                      title: "Curug Taraje",
                                      lokasi: "Garut ",
                                      rate: "55",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    homeOption(
                                      link: "detailpage",
                                      imageUrl: "images/pantairancabuaya.jpg",
                                      title: "Pantai Ranca Buaya",
                                      lokasi: "Garut Slatan",
                                      rate: "56",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    homeOption(
                                      link: "detailpage",
                                      imageUrl: "images/Gpapandayan.jpg",
                                      title: "Gunung Papandayan",
                                      lokasi: "Garut ",
                                      rate: "57",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    homeOption(
                                      link: "",
                                      imageUrl: "images/kcibuk.jpg",
                                      title: "RM Cibiuk",
                                      lokasi: "Garut ",
                                      rate: "52",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            'Terbaru',
                            style: TextStyle(
                                fontFamily: "Poppins-SemiBold.ttf",
                                fontSize: 18,
                                color: Color(0xff1F1449)),
                          )),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            homeOption(
                              link: "detailpage",
                              imageUrl: "images/pantairancabuaya.jpg",
                              title: "Pantai Ranca Buaya",
                              lokasi: "Garut Slatan",
                              rate: "56",
                            ),
                            Row(
                              children: <Widget>[
                                homeOption(
                                  link: "detailpage",
                                  imageUrl: "images/Gpapandayan.jpg",
                                  title: "Gunung Papandayan",
                                  lokasi: "Garut ",
                                  rate: "57",
                                ),
                                Row(
                                  children: <Widget>[
                                    homeOption(
                                      link: "detailpage",
                                      imageUrl: "images/Ctaraje.png",
                                      title: "Curug Taraje",
                                      lokasi: "Garut ",
                                      rate: "56",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    homeOption(
                                      link: "",
                                      imageUrl: "images/kcobek.jpg",
                                      title: "RM Cobek Cangkuang",
                                      lokasi: "Garut ",
                                      rate: "55",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    homeOption(
                                      link: "",
                                      imageUrl: "images/kceplak.jpg",
                                      title: "Kuliner Ceplak",
                                      lokasi: "Garut",
                                      rate: "55",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    homeOption(
                                      link: "",
                                      imageUrl: "images/kesgoyobod.jpg",
                                      title: "ES Goyobod",
                                      lokasi: "Garut ",
                                      rate: "55",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    homeOption(
                                      link: "",
                                      imageUrl: "images/image 19.png",
                                      title: "Pantain Santolo",
                                      lokasi: "Garut Selatan",
                                      rate: "55",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            'Terpopuler',
                            style: TextStyle(
                                fontFamily: "Poppins-SemiBold.ttf",
                                fontSize: 18,
                                color: Color(0xff1F1449)),
                          )),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            homeOption(
                              link: "detailpage",
                              imageUrl: "images/situbagendit.jpg",
                              title: "Situ Bagendit",
                              lokasi: "Kadungora",
                              rate: "56",
                            ),
                            Row(
                              children: <Widget>[
                                homeOption(
                                  link: "detailpage",
                                  imageUrl: "images/kmuarasunda.jpg",
                                  title: "RM Muara Sunda",
                                  lokasi: "Garut ",
                                  rate: "55",
                                ),
                                Row(
                                  children: <Widget>[
                                    homeOption(
                                      link: "detailpage",
                                      imageUrl: "images/psebrotan.jpg",
                                      title: "PantaiKarang Sebrotan",
                                      lokasi: "Garut Slatan",
                                      rate: "55",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    homeOption(
                                      link: "detailpage",
                                      imageUrl: "images/psancang.jpg",
                                      title: "Pantai Karang Sancang",
                                      lokasi: "Garut Slatan",
                                      rate: "55",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    homeOption(
                                      link: "detailpage",
                                      imageUrl: "images/klounghe.jpg",
                                      title: "Kuliner Cargo Kitchen",
                                      lokasi: "Garut ",
                                      rate: "55",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    homeOption(
                                      link: "detailpage",
                                      imageUrl: "images/image 19.png",
                                      title: "Ramayana",
                                      lokasi: "Bali",
                                      rate: "55",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    homeOption(
                                      link: "detailpage",
                                      imageUrl: "images/image 19.png",
                                      title: "Ramayana",
                                      lokasi: "Bali",
                                      rate: "55",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  void setState(Null Function() param0) {}
}

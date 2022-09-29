import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class slideetka extends StatefulWidget {
  @override
  _slideetkaState createState() => _slideetkaState();
}

class _slideetkaState extends State<slideetka> {
  @override
   int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> imageetika = [
    Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/image 19.png"), fit: BoxFit.cover))),
    Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/image 19.png"), fit: BoxFit.cover))),
    Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/image 19.png"), fit: BoxFit.cover)))
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        CarouselSlider(
          items: imageetika,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageetika.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
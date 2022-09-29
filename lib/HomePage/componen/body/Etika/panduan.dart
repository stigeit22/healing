import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healing_project/HomePage/componen/body/Etika/slideetika.dart';
class EtikaPanduan extends StatefulWidget {
  @override
  State<EtikaPanduan> createState() => _EtikaPanduanState();
}

class _EtikaPanduanState extends State<EtikaPanduan> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> imageetika = [
    Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/iklandarajat2.jpg"), fit: BoxFit.cover))),
    Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/iklandarajat2.jpg"), fit: BoxFit.cover))),
    Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/iklandarajat2.jpg"), fit: BoxFit.cover)))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.toNamed("buttomNavigator");
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: Text(
            "Panduan Perjalanan",
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontFamily: "font/Poppins--SemiBold",
                fontWeight: FontWeight.bold),
          ),
          actions: [
            PopupMenuButton(itemBuilder: (context)=>
            [
              PopupMenuItem(child: Text("About")),
              PopupMenuItem(child: Text("Share"))
            ]
            )
          // IconButton(
          //   icon: Icon(
          //     Icons.more_vert,
          //     color: Colors.white,
          //   ),
          //   onPressed: () {},
          // )
        ],
          backgroundColor: Color(0xff5C40CC),
        ),
          body: Container(
            
        padding: EdgeInsets.all(20),
        child: ListView(children: [
         CarouselSlider(
          items: imageetika,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }
              ),
        ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              margin: EdgeInsets.only(top:20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Panduan Etika",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  Icon(Icons.warning)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:20),
              padding: EdgeInsets.all(20),
              color: Colors.grey[100],
              width: double.infinity,
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text("Menghormati Hidup Liar",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  Container(
                    
                    padding: EdgeInsets.only(left:20,top: 10),
                    child: Column(children: [
                      Text("1.Jangan Memberi makan hewan Liiar",textAlign: TextAlign.left,),
                      Text("2.jangan mendekati hewan liar              ",textAlign: TextAlign.left,)
                    ],
                  ),)

                ]
              ),
            ),
             Container(
              margin: EdgeInsets.only(top:20),
              padding: EdgeInsets.all(10),
              color: Colors.grey[100],
              width: double.infinity,
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text("Membuang Sampah dengan benar",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  Container(
                    
                    padding: EdgeInsets.only(left:20,top: 10),
                    child: Column(children: [
                      Text("1.Jangan Membuang Sampah Sembarangan",textAlign: TextAlign.left,),
                      Text("2.Menjaga Kebersihan Lingkungan                  ",textAlign: TextAlign.left,)
                    ],
                  ),)

                ]
              ),
            ),
             Container(
              margin: EdgeInsets.only(top:20),
              padding: EdgeInsets.all(20),
              color: Colors.grey[100],
              width: double.infinity,
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text("Biarkan yang anda lihat dan temukan",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  Container(
                    
                    padding: EdgeInsets.only(left:20,top: 10),
                    child: Column(children: [
                      Text("1.Jangan Memberi makan hewan Liiar",textAlign: TextAlign.left,),
                     // Text("2.Amati saja hewan liar jangan mendekatinya",textAlign: TextAlign.left,)
                    ],
                  ),)

                ]
              ),
            )
          ],),
           Container(
              margin: EdgeInsets.only(top:20),
              padding: EdgeInsets.all(20),
              color: Colors.grey[100],
              width: double.infinity,
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text("Berskap hormat dan toleran terhadap orang lain",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  Container(
                    
                    padding: EdgeInsets.only(left:20,top: 10),
                    child: Column(children: [
                      Text("1.Jangan Memberi makan hewan Liiar",textAlign: TextAlign.left,),
                     // Text("2.Amati saja hewan liar jangan mendekatinya",textAlign: TextAlign.left,)
                    ],
                  ),)

                ]
              ),
            ),
             Container(
              margin: EdgeInsets.only(top:20),
              padding: EdgeInsets.all(20),
              color: Colors.grey[100],
              width: double.infinity,
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text("Etka Pendaikan",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  Container(
                    
                    padding: EdgeInsets.only(left:20,top: 10),
                    child: Column(children: [
                      Text("1.Jangan Memberi makan hewan Liiar",textAlign: TextAlign.left,),
                     // Text("2.Amati saja hewan liar jangan mendekatinya",textAlign: TextAlign.left,)
                    ],
                  ),)

                ]
              ),
            )
        ]),
        
      ),
    );
  }
}
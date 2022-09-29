import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homeOption extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String link;
  final String lokasi;
  final String rate;
  const homeOption({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.link,
    required this.lokasi,
     required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Get.toNamed(link);
        },
        child: Container(
          height: 166,
          width: 200,
          margin: EdgeInsets.all(10),

          //padding: EdgeInsets.only(top: 8),
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.white60,
              spreadRadius: 0,
              blurRadius: 2,
            )
          ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage(imageUrl),
                      width: 200,
                      height: 125,
                    ),
                  ),
                   Container(
                    margin: EdgeInsets.only(left: 10),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,

                       children: [
                         Text(
                  title,
                  style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff1F1449),
                            fontFamily: "fonts/Poppins-Medium.ttf"),
              ),
              Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                
              Text(
                  lokasi,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff9698A9),
                      fontFamily: "fonts/Poppins-Light.ttf"),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Row(children: [
 Icon(Icons.star, color: Colors.yellow,size: 15,),
                               
                              Text(
                                  rate,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff1F1449),
                                      fontFamily: "fonts/Poppins-Medium.ttf"),
                                ),
                ],),
              )
   
                            
                      
               
                  ],),
                       ],
                     ),
                   ),
               
               
                  
                ],
              ),
              
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';

class fitureDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
       
        child: Column(
          children: [
            Container(
               padding: EdgeInsets.all(20),
              height: 300,
               decoration: BoxDecoration(
              color: Colors.grey[100],
               boxShadow: [
                          BoxShadow(color: Colors.black.withOpacity(0.20),blurRadius: 0.20)
                          ]
            ),
              child: 

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text("MGI",style: TextStyle(fontWeight:FontWeight.bold)),
           Text("Regular"),
            Divider(
                      color:Colors.grey,
                    ),
                    Text("FASLITAS"),
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          
                        children: [
                          Column(
                            children: [
                              Image(image: AssetImage('images/ac.png'),height: 50,width: 50,),
                              Text("AC")
                            ],
                            
                          ),

                          SizedBox(width: 20,),
                          Column(
                            children: [
                              Icon(Icons.smoking_rooms,size: 50,),
                              Text("smoking room")
                            ],
                          ),
                          SizedBox(width: 20,),
                          Column(
                            children: [
                              Image(image: AssetImage('images/wifi.png'),height: 50,width: 50,),
                              Text("Wifi")
                            ],
                          ),
                          SizedBox(width: 20,),
                          Column(
                            children: [
                              Image(image: AssetImage('images/tv.png'),height: 50,width: 50,),
                              Text("Televition")
                            ],
                          ),
                          SizedBox(width: 20,),
                          Column(
                            children: [
                              Image(image: AssetImage('images/karouke.png'),height: 50,width: 50,),
                              Text("Karouke")
                            ],
                          ),
                       
                        ],
                      ),)

                    ),
                    Divider(
                      color:Colors.grey,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: [
                        Text("SPESIPIKASI ",style: TextStyle(fontWeight: FontWeight.bold
                        
                        ),),
                        SizedBox(height: 10,),
                        Text("Kapasitas Kursi 8"),
                        SizedBox(height: 5,),
                    Text("Format kursi 2-2"),
                    SizedBox(height: 5,),
                    Text("Regular"),
                      ],
                    ),
                    
              ],
            ),)
          
          ],
        ),
      ),
      
    );
  }
}
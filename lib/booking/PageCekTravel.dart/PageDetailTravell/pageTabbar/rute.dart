import 'package:flutter/material.dart';

class RuteDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
          
          Container(
            
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[100],
               boxShadow: [
                          BoxShadow(color: Colors.black.withOpacity(0.20),blurRadius: 0.20)
                          ]
            ),
            
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text("JADWAL",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            Container(
              child: Row(
                children: [
                  Column(children: [
                    Text("07:00"),
                     SizedBox(height: 50,),
                    Text("3j 0mnt",style: TextStyle(fontSize: 10,),),
                     SizedBox(height: 50,),
                    Text("10:00")
                  ],
                 
                  

                  ),
                   SizedBox(width: 50,),
                  Column(children: [
                    Text("Terminal Kampung Rambutan Jakarta",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    Text("Jl. Terminal Kampung Rambutan,\n Ciracas, Jakarta"),
                    SizedBox(height: 50,),
                     Text("Terminal Kampung Rambutan Jakarta",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    Text("Jl. Terminal Kampung Rambutan,\n Ciracas, Jakarta"),
                    
                  ],)
                ],
              ),
            )
          ]),
          ),
          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            
             decoration: BoxDecoration(
              color: Colors.grey[100],
               boxShadow: [
                          BoxShadow(color: Colors.black.withOpacity(0.20),blurRadius: 0.20)
                          ]
            ),

            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Rute",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("Jakarta - Bandung")
            ],)
          )
          
        ],
        )
      ),
      
    );
  }
}
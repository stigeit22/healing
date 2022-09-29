import 'package:flutter/material.dart';

import 'map.utils.dart';

class lokasidetail extends StatefulWidget {
  const lokasidetail({Key? key}) : super(key: key);

  @override
  _lokasidetailState createState() => _lokasidetailState();
}

class _lokasidetailState extends State<lokasidetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left:20,right:20,top: 10,),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children:<Widget>[
          
              Text(
                "Lokasi",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontFamily: "font/Poppins-SemiBold.ttf",
                    fontWeight: FontWeight.bold),
              ),
              InkWell(
                child: Image(image: AssetImage("images/lokasi.png",),height: 200,),
                onTap: (){
                  MapUtils.openMap("Sabda Alam Water Park","Sabda Alam Water Park");
                },
              ),
          
           Row(
           mainAxisAlignment: MainAxisAlignment.end,
             children: [
               TextButton(onPressed: (){
                MapUtils.openMap("Sabda Alam Water Park","Sabda Alam Water Park");
               }, child: Text("Rute Lokasi",style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff5C40CC),
                        fontFamily: "font/Poppins-SemiBold.ttf",
                        fontWeight: FontWeight.bold),)),
                        Icon(Icons.map_sharp,)
                        
             ],
           )
          
        ]),
      )
    );
  }
}

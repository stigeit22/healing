import 'package:flutter/material.dart';


import 'map.utils.dart';

class deskripsi extends StatelessWidget {
  const deskripsi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              "Deskripsi",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontFamily: "font/Poppins-SemiBold.ttf",
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "Wisata Sabda Alam adalah sebuah water Park yang terletak di daerah pemandian air panas Cipanas Garut. Letaknya yang strategis membuatnya menjadi destinasi wisata menarik di Jawa barat. Dengan konsep water Park yang kekinian menjadikannya sebagai pelopor water park air panas di daerah Cipanas.Berbagai wahana dan fasilitas telah disediakan pengelola untuk menghibur para pengunjung. Water slide, pancuran, kolam ombak dan panggung hiburan menjadi daya tarik utama. Selain itu, suasana alam Cipanas Garut yang berada di kaki gunung Guntur menjadi daya tarik lainnya.",
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontFamily: "font/Poppins-Regular.ttf",
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20, top: 20),
            child: Text(
              "Tiket Masuk",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontFamily: "font/Poppins-SemiBold.ttf",
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "Rp45.000 = 1 Orang",
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontFamily: "font/Poppins-Regular.ttf",
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20, top: 20),
            child: Text(
              "Jam Buka",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontFamily: "font/Poppins-SemiBold.ttf",
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "08.00-16.00 WIB",
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontFamily: "font/Poppins-Regular.ttf",
            ),
          ),
          // Container(
          //   child: GoogleMap(
          //     mapToolbarEnabled : true, 
          //     initialCameraPosition: (TargetPlatform:false),
             
          //      ),
          // )
        ],
      ),
    );
  }
}

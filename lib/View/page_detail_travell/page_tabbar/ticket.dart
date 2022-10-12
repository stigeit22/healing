import 'package:flutter/material.dart';

class Ticket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey, //color of shadow
                  spreadRadius: 0.2, //spread radius
                  blurRadius: 3, // blur radius
                  //offset: Offset(0, 1), // changes position of shadow
                  //first paramerter of offset is left-right
                  //second parameter is top to down
                ),
                //you can set more BoxShadow() here
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Syarat dan Ketentuan",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                Text(
                  "1.  Penumpang wajib memiliki aplikasi PeduliLindungi.",
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  "2.  Penumpang yang telah mendapat vaksin dua dosis\n     atau vaksinbooster tidak diwajibkan menunjukkan\n     hasil negatif tes RT-PCR atau tes antigen.",
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  "3.  Penumpang yang baru mendapat vaksin satu dosis\n     harus menunjukkan hasil negatif tes RT-PCR yang\n     dilakukan 3 x 24 jam sebelum keberangkatan.",
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  "4.  Penumpang yang tidak divaksinasi karena alasan\n     kesehatan wajib memperlihatkan pernyataan resmi\n     yang dikeluarkan Rumah Sakit  terkait kondisinya.",
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey, //color of shadow
                  spreadRadius: 0.2, //spread radius
                  blurRadius: 3, // blur radius
                  //offset: Offset(0, 1), // changes position of shadow
                  //first paramerter of offset is left-right
                  //second parameter is top to down
                ),
                //you can set more BoxShadow() here
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Cara Pakai E-Ticket",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  Text(
                    "1.  Tunjukkan E-tiket ke Petugas. Tunjukkan e-tiket\n     Anda ke petugas sebelum menaiki bus",
                    style: TextStyle(fontSize: 13),
                  ),
                  Text(
                    "2.  Selalu Bawa Kartu Identitas",
                    style: TextStyle(fontSize: 13),
                  ),
                  Text(
                    "3.  Simpan Tiket Jika Diberikan",
                    style: TextStyle(fontSize: 13),
                  ),
                  Text(
                    "4.  Selamat Menikmati Perjalanan",
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

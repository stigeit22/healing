import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:healing_project/booking/componen/model/class_lokasi.dart';

class Asal_lokasi extends StatefulWidget {
  const Asal_lokasi({Key? key}) : super(key: key);

  @override
  _Asal_lokasiState createState() => _Asal_lokasiState();
}

class _Asal_lokasiState extends State<Asal_lokasi> {
  late TextEditingController controller;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  List<Lokasi> lokasi = allLokasi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          TextButton(
              onPressed: () {
                Get.toNamed("pagebooking");
              },
              child: Text(
                "Batal",
                style: TextStyle(color: Colors.black),
              ))
        ],
        title: TextField(
          controller: controller,
          autofocus: false,
          cursorColor: Color(0xff5C40CC),
          decoration: InputDecoration(
              focusColor: Colors.grey,
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              hintText: "Cari Kota Atau Terminal",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.black))),
          onChanged: searchLokasi,
        ),
        bottom: PreferredSize(
            child: Container(
                margin: EdgeInsets.only(
                  left: 20,
                ),
                padding: EdgeInsets.only(
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    Container(
                        child: Icon(Icons.location_searching,
                            color: Colors.black)),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text("Lokasi Anda saat ini",
                          style: TextStyle(
                              color: Color(0xff5C40CC), fontSize: 15)),
                    ),
                  ],
                )),
            preferredSize: Size.fromHeight(30)),
      ),
      body: Container(
          margin: EdgeInsets.only(top: 10),
          child: ListView.builder(
            itemCount: lokasi.length,
            itemBuilder: (context, index) {
              final Lokasi = lokasi[index];
              return ListTile(
                onTap: save,
                leading: Image.network(
                  Lokasi.image,
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
                title: Text(Lokasi.title),
                subtitle: Text(Lokasi.deskripsi),
                trailing: Icon(Icons.check_box),
              );
            },
          )),
    );
  }

  void searchLokasi(String query) {
    final suggestions = allLokasi.where((Lokasi) {
      final LokasiTitle = Lokasi.title.toLowerCase();
      final input = query.toLowerCase();
      return LokasiTitle.contains(input);
    }).toList();
    setState(() => lokasi = suggestions);
  }

  void save() {
    Navigator.of(context).pop(controller.text);
  }
}

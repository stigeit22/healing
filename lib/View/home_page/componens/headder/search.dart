import 'package:flutter/material.dart';
import '../../../../model/classWisata.dart';

class Search extends StatefulWidget {
  // const Search({Key? key}) : super(key: key);
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final controller = TextEditingController();
  List<Wisata> wisata = allWisata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Temukan & Jelajahi"),
        backgroundColor: Color(0xff5C40CC),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wisata Terbaik',
              style: TextStyle(fontSize: 24, color: Color(0xff5C40CC)),
            ),
            Text(
              'Di Kota Garut',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Container(
                decoration: BoxDecoration(
                    color: Color(0xffEBEBEB),
                    borderRadius: BorderRadius.circular(5)),
                child: TextFormField(
                  cursorColor: Color(0xff5C40CC),
                  controller: controller,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: "fonts/Poppins-Medium.ttf",
                          fontWeight: FontWeight.bold),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      hintText: "Telusuri",
                      border: InputBorder.none),
                  onChanged: searchLokasi,
                )),
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: ListView.builder(
                    itemCount: wisata.length,
                    itemBuilder: (context, index) {
                      final Wisata = wisata[index];
                      return ListTile(
                        style: ListTileStyle.drawer,
                        onTap: () {
                          Navigator.pushNamed(context, Wisata.link);
                        },
                        leading: Image(image: AssetImage(Wisata.imageUrl)),
                        title: Text(
                          Wisata.title,
                          textAlign: TextAlign.start,
                        ),
                        subtitle: Text(Wisata.lokasi),
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }

  void searchLokasi(String query) {
    final suggestions = allWisata.where((Wisata) {
      final WisataTitle = Wisata.title.toLowerCase();
      final input = query.toLowerCase();
      return WisataTitle.contains(input);
    }).toList();
    setState(() => wisata = suggestions);
  }
}

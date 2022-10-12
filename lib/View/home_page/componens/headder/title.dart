import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healing_project/View/home_page/componens/Populer/PopulerOption.dart';
import 'package:healing_project/View/home_page/componens/headder/search.dart';

class title extends StatefulWidget {
  @override
  State<title> createState() => _titleState();
}

class _titleState extends State<title> {
  //const title({Key? key}) : super(key: key);
  final controller = TextEditingController();

  // List<Populer> populer = allPopuler;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade300),
        // margin: EdgeInsets.only(bottom: 90),

        child: Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: TextFormField(
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
                suffixIcon: CircleAvatar(
                  backgroundImage: AssetImage("images/garut.png"),
                ),
                border: InputBorder.none),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Search()));
            },
          ),
        ),
      ),
    );
  }

  // void searchPopuler(String query) {
  //   final suggestions = allPopuler.where((Populer) {
  //     final PopulerTitle = Populer.title.toLowerCase();
  //     final input = query.toLowerCase();
  //     return PopulerTitle.contains(input);
  //   }).toList();
  //   setState(() => populer = suggestions);
  // }
}

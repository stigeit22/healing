import 'package:flutter/material.dart';

import 'package:healing_project/HomePage/componen/kategori/componen/ptionkategori.dart';

class pagekategori extends StatefulWidget {
  const pagekategori({Key? key}) : super(key: key);

  @override
  State<pagekategori> createState() => _pagekategoriState();
}

class _pagekategoriState extends State<pagekategori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
            child: Column(
          children: [
            optionKategori(
              img: "images/logogunung.png",
              link: 'gunung',
              title: 'Pegunugan',
            ),
            SizedBox(
              height: 10,
            ),
            optionKategori(
              img: "images/logopantai.png",
              link: 'pantai',
              title: 'Pantai',
            ),
            SizedBox(
              height: 10,
            ),
            optionKategori(
              img: "images/logohutan.png",
              link: 'hutan',
              title: 'Hutan',
            ),
            SizedBox(
              height: 10,
            ),
            optionKategori(
              img: "images/logotaman.png",
              link: 'taman',
              title: 'Taman',
            ),
            SizedBox(
              height: 10,
            ),
            optionKategori(
              img: "images/logokuliner.png",
              link: 'kuliner',
              title: 'Kuliner',
            ),
            SizedBox(
              height: 10,
            ),
            optionKategori(
              img: "images/logosejarah.png",
              link: 'sejarah',
              title: 'Sejarah',
            ),
            SizedBox(
              height: 10,
            ),
            optionKategori(
              img: "images/logoolahraga.png",
              link: 'olahraga',
              title: 'Olahraga',
            )
          ],
        )),
      ),
    );
  }
}

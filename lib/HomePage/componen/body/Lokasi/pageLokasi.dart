import 'package:flutter/material.dart';
import 'package:healing_project/HomePage/componen/body/Lokasi/componen/optionlokasi.dart';

class pageLokasi extends StatefulWidget {
  const pageLokasi({Key? key}) : super(key: key);

  @override
  State<pageLokasi> createState() => _pageLokasiState();
}

class _pageLokasiState extends State<pageLokasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: ListView(
      children: [
        Column(
          children: [
            //Text("34 Provinsi Indonesia"),
            optionLokasi(
                nomer: "1. ", title: "Nanggroe Aceh Darussalam", link: "link"),
            optionLokasi(nomer: "2. ", title: "Sumatera Barat", link: "link"),
            optionLokasi(nomer: "3. ", title: "Sumatera Utara", link: "link"),
            optionLokasi(nomer: "4. ", title: "Sumatera Selatan", link: "link"),
            optionLokasi(nomer: "5. ", title: "Lampung", link: "link"),
            optionLokasi(nomer: "6. ", title: "Riau", link: "link"),
            optionLokasi(nomer: "7. ", title: "Kepulauan Riau", link: "link"),
            optionLokasi(nomer: "8. ", title: "Jambi", link: "link"),
            optionLokasi(
                nomer: "9. ", title: "Kepulauan Bangka Belitung", link: "link"),
            optionLokasi(nomer: "10. ", title: "Bengkulu", link: "link"),
            optionLokasi(nomer: "11. ", title: "Maluku", link: "link"),
            optionLokasi(nomer: "12. ", title: "Maluku Utara", link: "link"),
            optionLokasi(nomer: "13. ", title: "Papua", link: "link"),

            optionLokasi(nomer: "14. ", title: "Papua Barat", link: "link"),

            optionLokasi(nomer: "15. ", title: "Lampung", link: "link"),
            optionLokasi(nomer: "16. ", title: "DKI Jakarta", link: "link"),
            optionLokasi(nomer: "17. ", title: "Banten", link: "link"),
            optionLokasi(nomer: "18. ", title: "Jawa Barat", link: "link"),
            optionLokasi(nomer: "19. ", title: "Jawa Tengah", link: "link"),
            optionLokasi(nomer: "20. ", title: "Jawa Timur", link: "link"),
            optionLokasi(
                nomer: "21. ",
                title: "Daerah Istimewa Yogyakarta",
                link: "link"),
            optionLokasi(nomer: "22. ", title: "Bali ", link: "link"),

            optionLokasi(
                nomer: "23. ", title: "Nusa Tenggara Barat", link: "link"),
            optionLokasi(
                nomer: "24. ", title: "Nusa Tenggara Timur", link: "link"),
            optionLokasi(
                nomer: "25. ", title: "Kalimantan Barat", link: "link"),
            optionLokasi(
                nomer: "25. ", title: "Kalimantan Selatan", link: "link"),
            optionLokasi(
                nomer: "26. ", title: "Kalimantan Tengah", link: "link"),
            optionLokasi(
                nomer: "27. ", title: "Kalimantan Timur", link: "link"),
            optionLokasi(
                nomer: "28. ", title: "Kalimantan Utara", link: "link"),
            optionLokasi(nomer: "29. ", title: "Sulawesi Barat", link: "link"),
            optionLokasi(
                nomer: "30. ", title: "Sulawesi Tenggara", link: "link"),
            optionLokasi(
                nomer: "31. ", title: "Sulawesi Selatan", link: "link"),
            optionLokasi(nomer: "32. ", title: "Sulawesi Tengah", link: "link"),
            optionLokasi(nomer: "33. ", title: "Sulawesi Utara", link: "link"),
            optionLokasi(nomer: "34. ", title: "Gorontalo", link: "link"),
          ],
        )
      ],
    )));
  }
}

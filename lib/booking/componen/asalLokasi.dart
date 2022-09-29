import 'package:flutter/material.dart';
import 'package:healing_project/booking/componen/model/class_lokasi.dart';

class AsalLokasi extends StatelessWidget {
  const AsalLokasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: TextEditingController(text: "Lokasi Asal"),
        onTap: () {
          // showSearch(context: context, delegate: DataLokasi());
        },
        cursorColor: Colors.black,
        autofocus: false,
        decoration: InputDecoration(
            //focusedBorder:
            //  OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
            icon: Icon(
              Icons.location_searching,
              size: 25,
              color: Colors.black,
            ),
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black)),
            label: Text(
              "Asal",
              style: TextStyle(color: Colors.black),
            )),
      ),
    );
  }
}

class DataLokasi extends SearchDelegate<String> {
  final kota = [
    "Sumatra",
    "Langsa",
    "Lhokseumawe",
    'Sabang',
    'Subulussalam',
    'Denpasar',
    "Pangkalpinang",
    "Cilegon",
    "Serang",
    "Tangerang",
    "Tangerang Selatan",
    "Bengkulu",
    "Yogyakarta",
    'Gorontalo',
    'Kota Jakarta Barat',
    'Kota Jakarta Pusat',
    'Kota Jakarta Selatan',
    'Kota Jakarta Timur',
    'Kota Jakarta Utara',
    'Jambi',
    'Sungai Penuh',
    'Bandung',
    'Banjar',
    'Bekasi',
    'Bogor',
    'Cimahi',
    'Cirebon',
    'Depok',
    'Sukabumi',
    'Tasikmalaya',
    'Magelang',
    'Pekalongan',
    'Salatiga',
    'Semarang',
    'Surakarta',
    'Tegal',
    'Batu',
    'Blitar',
    'Kediri',
    'Madiun',
    'Malang',
    'Mojokerto',
    'Pasuruan',
    'Probolinggo',
    'Surabaya',
    'Pontianak',
    'Singkawang',
    'Banjarbaru',
    'Banjarmasin',
    'Palangka Raya',
    'Balikpapan',
    'Bontang',
    'Samarinda',
    'Tarakan',
    'Batam',
    'Tanjungpinang',
    'Bandar Lampung',
    'Metro',
    'Ambon',
    'Tual',
    'Ternate',
    'Tidore Kepulauan',
    'Bima',
    'Mataram',
    'Kupang',
    'Jayapura',
    'Sorong',
    'Dumai',
    'Pekanbaru',
    'Makassar',
    'Palopo',
    'Parepare',
    'Palu',
    'Baubau',
    'Kendari',
    'Bitung',
    'Kotamobagu',
    'Manado',
    'Tomohon',
    'Bukittinggi',
    'Padang',
    'Padang Panjang',
    'Pariaman',
    'Payakumbuh',
    'Sawahlunto',
    'Solok',
    'Lubuklinggau',
    'Pagar Alam',
    'Palembang',
    'Prabumulih',
    'Binjai',
    'Gunungsitoli',
    'edan',
    'Padangsidimpuan',
    'Pematangsiantar',
    'Sibolga',
    'Tanjungbalai',
    'Tebing Tinggi',
  ];
  final recentKota = [
    "Garut"
        'Kota Jakarta Barat',
    'Kota Jakarta Pusat',
    'Kota Jakarta Selatan',
    'Kota Jakarta Timur',
    'Kota Jakarta Utara',
    'Jambi',
    'Sungai Penuh',
    'Bandung',
    'Banjar',
    'Bekasi',
    'Bogor',
    'Cimahi',
    'Cirebon',
    'Depok',
    'Sukabumi',
    'Tasikmalaya',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [IconButton(onPressed: () {}, icon: Icon(Icons.clear))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        onPressed: () {},
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final suggestionlist = query.isEmpty ? recentKota : kota;
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {},
        leading: Icon(Icons.location_city),
        title: Text(suggestionlist[index]),
        subtitle: Text('Lokasi.deskripsi'),
      ),
      itemCount: suggestionlist.length,
    );
  }
}

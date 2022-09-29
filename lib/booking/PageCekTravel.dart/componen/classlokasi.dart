import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Lokasitravel extends SearchDelegate<String> {
 
  final Ltravel = [
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
    "Garut",
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
    return [IconButton(onPressed: () {
      query = "";
    }, icon: Icon(Icons.clear))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        onPressed: () {
          close(context, "oke");
        },
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
    
    final suggestionlist = query.isEmpty ? recentKota : Ltravel.where((p) =>p.startsWith(query)).toList();
    var isChecked = false;
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        // (kota) => setState(() => selectedItem = query),
        //onTap:(){(kota) => setState(() =>title=kota );},
         
        
        leading: Image(image: AssetImage('images/map.png'),height: 50,width: 50,),
        title: Text(suggestionlist[index]),
        subtitle: Text("semua titik lokasi"),
        trailing: Checkbox(value: isChecked, onChanged: (value){
        SetState(()=> isChecked = value!);
        })
      ),
      itemCount: suggestionlist.length,
    );
  }
}

class SetState {
  SetState(bool Function( ) param0);

}




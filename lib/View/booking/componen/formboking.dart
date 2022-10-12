import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healing_project/widget/customformbooking.dart';

class formboking extends StatefulWidget {
  const formboking({Key? key}) : super(key: key);

  @override
  _formbokingState createState() => _formbokingState();
}

class _formbokingState extends State<formboking> {
  DateTime selectDate = DateTime.now();
  DateTimeRange dateRange = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );

  List<String> items = [
    '1 kursi',
    '2 kursi',
    '3 kursi',
    '4 kursi',
    '5 kursi',
    '6 kursi',
    '7 kursi',
    '8 kursi'
  ];
  String? selectedItem = '1 kursi';
  String title = '';
  @override
  Widget build(BuildContext context) {
    final pergi = dateRange.start;
    final pulang = dateRange.end;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: TextEditingController(text: "Bandung"),
            onTap: () {
              showSearch(context: context, delegate: DataLokasi());
            },
            cursorColor: Colors.black,
            autofocus: false,
            decoration: InputDecoration(
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
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: TextEditingController(text: "Garut"),
            onTap: () {
              showSearch(context: context, delegate: DataLokasi());
            },
            cursorColor: Colors.black,
            autofocus: false,
            decoration: InputDecoration(
                //focusedBorder:
                //  OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                icon: Icon(
                  Icons.circle_rounded,
                  size: 25,
                  color: Colors.black,
                ),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                label: Text(
                  "Tujuan",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: TextEditingController(
                text: '${pergi.day}/${pergi.month}/${pergi.year}'),

            //cursorColor: Colors.black,
            autofocus: false,
            showCursor: false,
            decoration: InputDecoration(

                //  OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                icon: Icon(Icons.calendar_month, color: Colors.black),
                //hintText: '${pergi.day}/${pergi.month}/${pergi.year}',
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                label: Text(
                  "Pergi",
                  style: TextStyle(color: Colors.black),
                )),
            onTap: pickDateRange,
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: TextEditingController(
                text: '${pulang.day}/${pulang.month}/${pulang.year}'),

            //cursorColor: Colors.black,
            autofocus: false,
            showCursor: false,
            decoration: InputDecoration(

                //  OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                icon: Icon(Icons.calendar_month, color: Colors.black),
                //hintText: '${pergi.day}/${pergi.month}/${pergi.year}',
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                label: Text(
                  "Pulang",
                  style: TextStyle(color: Colors.black),
                )),
            onTap: pickDateRange,
          ),
          Row(children: [
            SizedBox(
              width: 150,
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                    icon: Icon(Icons.people, color: Colors.black),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    label: Text(
                      "Penumpang",
                      style: TextStyle(color: Colors.black),
                    )),
                value: selectedItem,
                items: items
                    .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                        )))
                    .toList(),
                onChanged: (item) => setState(() => selectedItem = item),
              ),
            )
          ]),
        ],
      ),
    );
  }

  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
        context: context,
        initialDateRange: dateRange,
        firstDate: DateTime(2001),
        lastDate: DateTime(2050));

    if (newDateRange == null) return;
    setState(() => dateRange = newDateRange);
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
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
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
    final suggestionlist = query.isEmpty
        ? recentKota
        : kota.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.location_city),
        title: Text(suggestionlist[index]),
        subtitle: Text('Lokasi.deskripsi'),
      ),
      itemCount: suggestionlist.length,
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:healing_project/View/detail_page/detailpage.dart';
import 'package:healing_project/View/home_page/componens/kategori/componen/Gunung/pegunungan.dart';
import 'package:healing_project/View/home_page/componens/kategori/componen/Hutan/hutan.dart';
import 'package:healing_project/View/home_page/componens/kategori/componen/Kuliner/kuliner.dart';
import 'package:healing_project/View/home_page/componens/kategori/componen/Olahraga/olahraga.dart';
import 'package:healing_project/View/home_page/componens/kategori/componen/Pantai/pantai.dart';
import 'package:healing_project/View/home_page/componens/kategori/componen/Sejarah/sejarah.dart';
import 'package:healing_project/View/home_page/componens/kategori/componen/Taman/taman.dart';
import 'package:healing_project/View/page_cek_travel/filter_travel.dart';
import 'package:healing_project/View/page_detail_travell/detailtravell.dart';
import 'package:healing_project/alert/alret_filter.dart';
import 'package:healing_project/provider/todo_list_provaider.dart';
import 'package:healing_project/View/welcome_page/splash_secreen.dart';
import 'package:healing_project/wrapper.dart';
import 'package:provider/provider.dart';
import 'View/home_page/componens/Lokasi/DetilLokasi/lokasikecamatan.dart';
import 'View/home_page/componens/Lokasi/DetilLokasi/tabbar_kategori.dart';
import 'widget/optionpesanan.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TodoListProvider())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Hiliektrng Project',
          // home: AuthService().handleAuthState(),
          home: tabbar_kategori(),
          initialRoute: '/',
          routes: {
            'detailpage': (context) => detailpage(),
            'DetailTravell': (context) => DetailTravell(),
            'gunung': (context) => Gunung(),
            'hutan': (context) => hutan(),
            'kuliner': (context) => kuliner(),
            'olahraga': (context) => olahraga(),
            'pantai': (context) => pantai(),
            'sejarah': (context) => sejarah(),
            'taman': (context) => taman(),
            'WisataKecamatan': (context) => WisataKecamatan(),
          },
        ));
  }
}

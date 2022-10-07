import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:healing_project/DetailPage/detailpage.dart';
import 'package:healing_project/HomePage/componen/body/kategori/componen/Gunung/pegunungan.dart';
import 'package:healing_project/HomePage/componen/body/kategori/componen/Hutan/hutan.dart';
import 'package:healing_project/HomePage/componen/body/kategori/componen/Kuliner/kuliner.dart';
import 'package:healing_project/HomePage/componen/body/kategori/componen/Olahraga/olahraga.dart';
import 'package:healing_project/HomePage/componen/body/kategori/componen/Pantai/pantai.dart';
import 'package:healing_project/HomePage/componen/body/kategori/componen/Sejarah/sejarah.dart';
import 'package:healing_project/HomePage/componen/body/kategori/componen/Taman/taman.dart';
import 'package:healing_project/booking/PageCekTravel.dart/PageDetailTravell/detailtravell.dart';
import 'package:healing_project/provaider/todo_list_provaider.dart';
import 'package:healing_project/view/Splash_Secreen.dart';
import 'package:healing_project/wrapper.dart';
import 'package:provider/provider.dart';

import 'pesanan/component/optionpesanan.dart';

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
          home: Splash(),
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
          },
        ));
  }
}

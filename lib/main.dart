import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:healing_project/DetailPage/detailpage.dart';
import 'package:healing_project/HomePage/HomePage.dart';
import 'package:healing_project/HomePage/componen/body/kategori/componen/Gunung/pegunungan.dart';
import 'package:healing_project/HomePage/componen/body/kategori/componen/Hutan/hutan.dart';
import 'package:healing_project/HomePage/componen/body/kategori/componen/Kuliner/kuliner.dart';
import 'package:healing_project/HomePage/componen/body/kategori/componen/Olahraga/olahraga.dart';
import 'package:healing_project/HomePage/componen/body/kategori/componen/Pantai/pantai.dart';
import 'package:healing_project/HomePage/componen/body/kategori/componen/Sejarah/sejarah.dart';
import 'package:healing_project/HomePage/componen/body/kategori/componen/Taman/taman.dart';
import 'package:healing_project/HomePage/componen/body/kategori/pagekategori.dart';
import 'package:healing_project/UserSeting/Login/login.dart';
import 'package:healing_project/UserSeting/Profil/profil.dart';
import 'package:healing_project/auth_service.dart';
import 'package:healing_project/booking/PageCekTravel.dart/PageDetailTravell/detailtravell.dart';
import 'package:healing_project/booking/PageCekTravel.dart/PagePembayaran/MetodePembayaran/BankBCA/bayar.dart';
import 'package:healing_project/booking/PageCekTravel.dart/PagePembayaran/MetodePembayaran/BankBCA/metodebayarBCA.dart';
import 'package:healing_project/booking/PageCekTravel.dart/PagePembayaran/datapemesan.dart';
import 'package:healing_project/booking/PageCekTravel.dart/cektravell.dart';
import 'package:healing_project/booking/Pagebooking.dart';
import 'package:healing_project/booking/componen/bodybooking.dart';
import 'package:healing_project/booking/componen/model/AsalLoksasi.dart';
import 'package:healing_project/bootmNavigator/bottomNavigator.dart';
import 'package:healing_project/provaider/todo_list_provaider.dart';

import 'package:healing_project/view/Splash_Secreen.dart';

import 'package:healing_project/widget/customprogresbar.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'DetailPage/Componen/Map.dart';

import 'DetailPage/Componen/Ulasan/ulasan.dart';
import 'HomePage/componen/body/Lokasi/pageLokasi.dart';
import 'HomePage/componen/body/Populer/pagePopuler.dart';
import 'HomePage/componen/headder/search.dart';
import 'HomePage/componen/headder/title.dart';
import 'UserSeting/signUp/signup.dart';
import 'booking/componen/asalLokasi.dart';
import 'booking/componen/model/formboking.dart';
import 'onboarding/onboarding.dart';

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

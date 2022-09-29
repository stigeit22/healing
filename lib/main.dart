import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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
import 'package:healing_project/booking/PageCekTravel.dart/PageDetailTravell/detailtravell.dart';
import 'package:healing_project/booking/PageCekTravel.dart/PagePembayaran/MetodePembayaran/BankBCA/bayar.dart';
import 'package:healing_project/booking/PageCekTravel.dart/PagePembayaran/MetodePembayaran/BankBCA/metodebayarBCA.dart';
import 'package:healing_project/booking/PageCekTravel.dart/PagePembayaran/datapemesan.dart';
import 'package:healing_project/booking/PageCekTravel.dart/cektravell.dart';
import 'package:healing_project/booking/Pagebooking.dart';
import 'package:healing_project/booking/componen/bodybooking.dart';
import 'package:healing_project/booking/componen/model/AsalLoksasi.dart';
import 'package:healing_project/bootmNavigator/bottomNavigator.dart';

import 'package:healing_project/view/Splash_Secreen.dart';

import 'package:healing_project/widget/customprogresbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'DetailPage/Componen/Map.dart';

import 'DetailPage/Componen/coba.dart';
import 'HomePage/componen/body/Lokasi/pageLokasi.dart';
import 'HomePage/componen/body/Populer/pagePopuler.dart';
import 'HomePage/componen/headder/search.dart';
import 'HomePage/componen/headder/title.dart';
import 'UserSeting/signUp/signup.dart';
import 'booking/componen/asalLokasi.dart';
import 'booking/componen/model/formboking.dart';
import 'onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hiliektrng Project',
        home: onboarding(),
        initialRoute: '/',
        getPages: [
          GetPage(
            name: '/detailpage',
            page: () => detailpage(),
          ),
          GetPage(
            name: '/Asal_lokasi',
            page: () => Asal_lokasi(),
          ),
          GetPage(
            name: '/AsalLokasi',
            page: () => AsalLokasi(),
          ),
          GetPage(
            name: '/Search',
            page: () => Search(),
          ),
          GetPage(
            name: '/formboking',
            page: () => formboking(),
          ),
          GetPage(
            name: '/pagebooking',
            page: () => pagebooking(),
          ),
          GetPage(
            name: '/pagekategori',
            page: () => pagekategori(),
          ),
          GetPage(
            name: '/signUp',
            page: () => signUp(),
          ),
          GetPage(
            name: '/Login',
            page: () => Login(),
          ),
          GetPage(
            name: '/Profil',
            page: () => Profil(),
          ),
          GetPage(
            name: '/buttomNavigator',
            page: () => buttomNavigator(),
          ),
          GetPage(
            name: '/DetailTravell',
            page: () => DetailTravell(),
          ),
          GetPage(
            name: '/datapemesan',
            page: () => datapemesan(),
          ),
          //kategori
          GetPage(
            name: '/Gunung',
            page: () => Gunung(),
          ),
          GetPage(
            name: '/hutan',
            page: () => hutan(),
          ),
          GetPage(
            name: '/kuliner',
            page: () => kuliner(),
          ),
          GetPage(
            name: '/olahraga',
            page: () => olahraga(),
          ),
          GetPage(
            name: '/pantai',
            page: () => pantai(),
          ),
          GetPage(
            name: '/sejarah',
            page: () => sejarah(),
          ),
          GetPage(
            name: '/taman',
            page: () => taman(),
          ),
        ]);
  }
}

// Future<UserCredential> signInWithGoogle() async {
//   final GoogleSignInAccount? googleuser = await GoogleSignIn().signIn();
//   final GoogleSignInAuthentication googleAuth = await googleuser.authentication;
//   final GoogleAuthCredential credential = GoogleA
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:healing_project/UserSeting/Login/componen/formlogin.dart';
import 'package:healing_project/UserSeting/Login/componen/head.dart';
import 'package:healing_project/auth_service.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final RoundedLoadingButtonController googleController =
      RoundedLoadingButtonController();
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
            // Color(0xff5C40CC),
            Color.fromARGB(255, 20, 67, 197),

            Color.fromARGB(255, 146, 240, 117),
          ])),
      child: ListView(children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              margin: EdgeInsets.only(top: 70, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore terus',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'keindahan alam  di sekitar kita',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              )),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Center(
              child: Text(
                'Healing Time',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              child: Column(children: [
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: "fonts/Poppins-Medium.ttf",
                                fontWeight: FontWeight.bold),
                            prefixIcon: Icon(Icons.email),
                            hintText: "Email Addres",
                            border: InputBorder.none),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: "fonts/Poppins-Medium.ttf",
                                fontWeight: FontWeight.bold),
                            prefixIcon: Icon(Icons.lock_outline_rounded),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Icon(_obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                            hintText: "Password",
                            border: InputBorder.none),
                        obscureText: _obscureText,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ]),
            ),
          ),
          Center(
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    // begin:Alignment.center,
                    // end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 146, 240, 117),
                      Color.fromARGB(255, 20, 67, 197),
                    ]),
                borderRadius: BorderRadius.circular(30),
                // color: Color(0xff5C40CC)
              ),
              child: TextButton(
                  onPressed: () {
                    //AuthService().signWithGoogle();
                  },
                  child: Text(
                    "Masuk",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
            ),
          ),
          Center(
              child: TextButton(
            onPressed: () {
              Get.toNamed("Profil");
            },
            child: Text(
              "Lupa Pasword...?",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff5C40CC)),
            ),
          )),
          Center(
            child: Text("Atau Masuk Dengan "),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                // margin: EdgeInsets.only(top: 20),
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(
                        "images/google.png",
                      ),
                      height: 24,
                      width: 24,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Google",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(
                        "images/fb.png",
                      ),
                      height: 24,
                      width: 24,
                    ),
                    TextButton(
                        onPressed: () {
                          Get.toNamed("Profil");
                        },
                        child: Text(
                          "Facebook",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )),
                  ],
                ),
              ),
            ],
          ),
          Container(
            // color: Colors.black
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum Memiliki Akun?",
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                    TextButton(
                        onPressed: () {
                          Get.toNamed("signUp");
                        },
                        child: Text(
                          "Daftar",
                          style: TextStyle(color: Color(0xff5C40CC)),
                        ))
                  ],
                ),
                Text("Terms and Conditions",
                    style: TextStyle(fontSize: 15, color: Colors.black)),
              ],
            ),
          )
        ]),
      ]),
    ));
  }
}

// Future<UserCredential> signInWithGoogle() async {
//   final GoogleSignInAccount? googleuser = await GoogleSignIn().signIn();
//   final GoogleSignInAuthentication? googleAuth =
//       await googleuser?.authentication;
//   final GoogleAuthCredential credential = GoogleAuthProvider.credential(
//     idToken: googleAuth?.idToken,
//     accessToken: googleAuth?.accessToken,
//   ) as GoogleAuthCredential;
//   Fluttertoast.showToast(msg: "Akun berhasil di buat");
//   return await FirebaseAuth.instance.signInWithCredential(credential);
// }

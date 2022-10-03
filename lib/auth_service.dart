import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:healing_project/UserSeting/Login/login.dart';
import 'package:healing_project/bootmNavigator/bottomNavigator.dart';
import 'package:flutter/cupertino.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;
  static Future signInAnonymously() async {
    AuthResult result = await _auth.signInAnonymously();
  }
}














// class AuthService {
//   handleAuthState() {
//     return StreamBuilder(
//       stream: FirebaseAuth.instance.authStateChanges(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return buttomNavigator();
//         } else {
//           return const Login();
//         }
//       },
//     );
//   }

//   signWithGoogle() async {
//     final GoogleSignInAccount? googleUser =
//         await GoogleSignIn(scopes: <String>['email']).signIn();
//     final GoogleSignInAuthentication googleAuth =
//         await googleUser!.authentication;
//     final credential = GoogleAuthProvider.credential(
//       idToken: googleAuth.idToken,
//       accessToken: googleAuth.accessToken,
//     );
//     Fluttertoast.showToast(msg: "Akun berhasil di buat");
//     return await FirebaseAuth.instance.signInWithCredential(credential);
//   }

//   sigOut() {
//     FirebaseAuth.instance.signOut();
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:healing_project/View/bootm_navigator/bottomNavigator.dart';
import 'package:flutter/cupertino.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;
  static Future<User?> signInAnonymously() async {
    try {
      var result = await _auth.signInAnonymously();
      User? firebaseUser = result.user;
      return firebaseUser;
    } catch (e) {
      print(e.toString());
      return null; 
    }
  }
}

mixin FirebaseUser {
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
//}

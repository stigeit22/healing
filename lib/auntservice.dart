import 'package:firebase_auth/firebase_auth.dart';

// class AuthServices{
//   static FirebaseAuth _auth = FirebaseAuth.instance;
//   static FuturesignInAnonymously()async{
//     try{
//       AuthResult result = await _auth.signInAnonymously();
//       FirebaseUser firebaseUser = result.user;
//       return firebaseUser;
//     }catch (e){
//       print(e.toString());

//       return null;
//     }
    
//   }
//   static Future<void> signOut()async{
//     _auth.signOut();
//     } 
// }
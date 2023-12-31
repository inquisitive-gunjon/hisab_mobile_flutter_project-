import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthProvider extends ChangeNotifier{
final FirebaseAuth _auth=FirebaseAuth.instance;
final GoogleSignIn _googleSignIn = GoogleSignIn();
User? _user;
User? get user=>_user;
Future<void> signInWithGoogle() async {
  final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
  final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
  final OAuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );
  final UserCredential userCredential = await _auth.signInWithCredential(credential);
  _user = userCredential.user;
  notifyListeners();
}

Future<void> signOut() async {
  await _auth.signOut();
  await _googleSignIn.signOut();
  _user = null;
  notifyListeners();
}

}



//   String _email='';
//   String _password='';
//   String get email=>_email;
//   String get password=>_password;
//   // set email(String value){
//   //   _email=value;
//   //   notifyListeners();
//   // }
//
//   void setEmail(String email){
//     _email=email;
//     notifyListeners();
//
//   }
//
// void setPassword(String password){
//
//     _password=password;
//     notifyListeners();
// }
//
//  bool isEmailValid(){
//    RegExp regex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
//    return regex.hasMatch(_email);
//  }
//  bool isPasswordValid(){
//    RegExp regex = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
//    return regex.hasMatch(_password);
//
//  }
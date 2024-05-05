

import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationController{

  AuthenticationController._();

  static final FirebaseAuth _auth = FirebaseAuth.instance;

  FirebaseAuth get auth => _auth;

  static isLogin(String email,String password){
    try{
      _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    }on FirebaseAuthException{

    }
  }

  isSignUp(String email,String password){
    try{
      _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    }on FirebaseAuthException{

    }
  }

  isForgetPassword(String email){
    try{
      _auth.sendPasswordResetEmail(
        email: email,
      );
    }on FirebaseAuthException{

    }
  }

  isSignOutAccount()async{
   return _auth.signOut();
  }

}
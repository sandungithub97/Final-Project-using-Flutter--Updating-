import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_system/board.dart';
import 'package:login_system/login_page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthController extends GetxController{

 static AuthController  instance = Get.find();
 late  Rx<User?> _user;
 FirebaseAuth auth =FirebaseAuth.instance;

 @override
 void onReady(){
  super.onReady();
  _user = Rx<User?>(auth.currentUser); //our user would be notified
  _user.bindStream(auth.userChanges());
  ever(_user, _initialScreen);
  super.onReady();
 }
 _initialScreen(User? user){
  if(user==null){
   print("login page");
   Get.offAll(()=>LoginPage());
 }else{
   Get.offAll(()=>DashBoard());
  }
 }

 void register(String fullname, email, password) async{
  try{
   await auth.createUserWithEmailAndPassword(email: email, password: password);
  } catch(e){
   Get.snackbar("About User", "User message",
   backgroundColor: Colors.red,
   snackPosition: SnackPosition.BOTTOM,
   titleText: Text(
       "Account Creation Faild",
       style: TextStyle(
       color: Colors.white,
   ),
    ),
      messageText: Text(
      e.toString(),
      style: TextStyle(
      color: Colors.white
  ),
  )
   );
  }
 }
 void login(String fullname, email, password) async{
  try{
   await auth.signInWithEmailAndPassword(email: email, password: password);
  } catch(e){
   Get.snackbar("About Login", "Login message",
       backgroundColor: Colors.red,
       snackPosition: SnackPosition.BOTTOM,
       titleText: Text(
        "Account Login Faild.. Try again..",
        style: TextStyle(
         color: Colors.white,
        ),
       ),
       messageText: Text(
        e.toString(),
        style: TextStyle(
            color: Colors.white
        ),
       )
   );
  }
 }
 void logout() async {
  await auth.signOut();
 }
}

import 'package:flutter/material.dart';
import 'package:swiggy_clone/Screens/Home.dart';
import 'package:swiggy_clone/Screens/AddLocation.dart';
import 'package:swiggy_clone/Screens/Hotel_list.dart';
import  'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}




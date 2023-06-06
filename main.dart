import 'dart:io';

import 'package:flutter/material.dart';

import 'Bottomnavgation_model/Profile.dart';
import 'Dashboard/Dashboard2.dart';
import 'Dropdown/Dropdown 1.dart';
import 'Dropdown/testDropdown.dart';
import 'Login/splesh.dart';







void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  Dashboard(),
      debugShowCheckedModeBanner: false,

    );
  }

}



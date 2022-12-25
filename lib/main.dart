import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:self_ad/splash.dart';

import 'ProfileUI.dart';


void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.cyan,
      ),
      home: Splash(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileUI(),
    );
  }
}
   
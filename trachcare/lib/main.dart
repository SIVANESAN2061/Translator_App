// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:trachcare/splash.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      // 50% of screen height
      return Sizer(
        builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {  
        return MaterialApp(
          debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        home: Scaffold(
          body: Splash()
            ));}
      );
  }
}  
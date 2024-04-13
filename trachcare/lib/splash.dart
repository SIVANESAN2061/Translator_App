// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously


import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:trachcare/homepage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 3500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[                 
Container(
  width: 43.w,
  height: 95.h,
  clipBehavior: Clip.antiAlias,
  decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.00, -1.00),
      end: Alignment(0, 1),
      colors: [Color(0xFFFFDDDD), Color.fromARGB(255, 187, 255, 255)],
    ),
  ),
  child: Stack(
    alignment: AlignmentDirectional.center,
    children: [
      Positioned(
        left: 75,
        top: 250,
        child: Container(
          width: 60.w,
          height: 30.h,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFFFFDDDD), Color.fromARGB(255, 187, 255, 255)],
            ),
            image: DecorationImage(
              image: AssetImage("assets/images/logo.jpeg"),
              fit: BoxFit.fill,
              
              
            ),
            shape: OvalBorder(),
      shadows: [
        BoxShadow(
          color: Color(0xFFFFDDDD),
          blurRadius: 4,
          offset: Offset(0, 4),
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color(0xFFFFDDDD),
          blurRadius: 4,
          offset: Offset(0, 4),
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color.fromARGB(255, 187, 255, 255),
          blurRadius: 4,
          offset: Offset(4, 0),
          spreadRadius: 0,)
      ],
          ),
        ),
      ),
    ],
  ),
)

 
      ],
     )
   );
  }
}
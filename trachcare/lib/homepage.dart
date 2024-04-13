// ignore_for_file: prefer_const_constructors// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

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

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
        Container(
          width: 430,
          height: 932,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 300,
                child: Container(
                  width: 430,
                  height: 748,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFFFFDDDD), Color(0xFFCFF6F6)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 144,
                top: 807,
                child: Container(
                  width: 142,
                  height: 38,
                  decoration: ShapeDecoration(
                    color: Color(0xFF00BFA6),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFDCECBB)),
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 180,
                top: 814,
                child: Text(
                  'Patient',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 186,
                top: 535,
                child: SizedBox(
                  width: 92,
                  height: 32,
                  child: Text(
                    'Doctor',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 132,
                top: 54,
                child: Container(
                  width: 166,
                  height: 175,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFFFFDDDD), Color(0xFFD6F7F7)],
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 49,
                top: 244,
                child: SizedBox(
                  width: 333,
                  height: 36,
                  child: Text(
                    ' Choose your category',
                    style: TextStyle(
                      color: Color(0xFF455A64),
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 259,
                top: 187,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 89,
                    height: 91,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://via.placeholder.com/89x91"),
                        fit: BoxFit.fill,
                      ),
                      shape: OvalBorder(),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 132,
                top: 622,
                child: Container(
                  width: 160,
                  height: 160,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/160x160"),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
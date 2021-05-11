import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_app/screens/onboard_screen.dart';
import 'package:grocery_app/screens/welcome_screen.dart';

import 'screens/register_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
        Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context)=>WelcomeScreen(),
      ));
    }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Hero(
              tag: 'logo',
              child: Image.asset('images/logo.png'))
      ),
    );
  }
}

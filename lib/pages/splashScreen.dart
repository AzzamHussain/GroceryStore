import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocerystore/pages/HomePage.dart';
import '../constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: green, // Adjust background color as needed
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Image.asset(
            'assets/Group 1.png', // Adjust the file name and path as needed
            width: 267.42, // Width from Figma styling
            height: 68.61, // Height from Figma styling
          ),
        ),
      ),
    );
  }
}

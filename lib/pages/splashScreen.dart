import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocerystore/pages/HomePage.dart';
import 'package:grocerystore/pages/On_Boarding.dart';
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
          builder: (context) => Boarding(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            color: green, // Adjust background color as needed
            height: MediaQuery.of(context).size.height,
          ),
          // Navigation bar at the top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/Navigation_Bar.png',
              fit: BoxFit.contain, // Adjust the fit as needed
            ),
          ),
          // Onlight portrait at the bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/On Light - Portrait.png',
              fit: BoxFit.contain, // Adjust the fit as needed
            ),
          ),
          // Centered logo
          Positioned(
            top: MediaQuery.of(context).size.height / 2 -
                34.305, // Adjust the position as needed
            left: MediaQuery.of(context).size.width / 2 -
                133.71, // Adjust the position as needed
            child: Image.asset(
              'assets/Group 1.png', // Adjust the file name and path as needed
              width: 267.42, // Width from Figma styling
              height: 68.61, // Height from Figma styling
            ),
          ),
        ],
      ),
    );
  }
}

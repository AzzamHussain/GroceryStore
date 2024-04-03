import 'package:flutter/material.dart';
import '../constants/colors.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: green, //background: rgba(83, 177, 117, 1);
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Image.asset(
            'assets/carrot.png', // Adjust the file name and path as needed
            width: 100, // Adjust width as needed
            height: 100, // Adjust height as needed
          ),
        ),
      ),
    );
  }
}

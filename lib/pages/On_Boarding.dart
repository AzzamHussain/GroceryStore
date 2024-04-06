import 'package:flutter/material.dart';

class Boarding extends StatefulWidget {
  const Boarding({super.key});

  @override
  State<Boarding> createState() => _BoardingState();
}

class _BoardingState extends State<Boarding> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            child: Image.asset(
              'assets/onBoarding.png',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 430.26,
            left: 165.76,
            child: Opacity(
              opacity: 1.0,
              child: Image.asset(
                'assets/carrot.png',
                width: 48.47,
                height: 56.36,
              ),
            ),
          ),
          Positioned(
            top: 500.28,
            left: 60.5,
            child: Opacity(
              opacity: 1.0,
              child: Image.asset(
                'assets/Welcome to our store.png',
                width: 253,
                height: 86,
              ),
            ),
          ),
          Positioned(
            top: 600,
            left: 38,
            child: Opacity(
              opacity: 1.0,
              child: Image.asset(
                'assets/onb.png',
                width: 295,
                height: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
            top: 485.26,
            left: 182.76,
            child: Opacity(
              opacity: 0.0,
              child: Image.asset(
                'assets/carrot.png',
                width: 48.47,
                height: 56.36,
              ),
            ),
          ),
          Positioned(
            top: 577.28,
            left: 80.5,
            child: Opacity(
              opacity: 0.0,
              child: Image.asset(
                'assets/Welcome to our store.png',
                width: 253,
                height: 86,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

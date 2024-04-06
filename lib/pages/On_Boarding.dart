import 'package:flutter/material.dart';
import 'package:grocerystore/pages/HomePage.dart';

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
          Positioned(
            top: 630.16,
            left: 4.5,
            child: GestureDetector(
              onTap: () {
                // Handle button tap here
                // For example, you can navigate to another screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Container(
                height: 67,
                width: 353, // Adjust width as needed
                decoration: BoxDecoration(
                  color: Colors.green, // Change color as needed
                  borderRadius: BorderRadius.circular(
                      10), // Adjust border radius as needed
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white, // Change text color as needed
                      fontSize: 18, // Change text size as needed
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

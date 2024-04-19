import 'package:flutter/material.dart';
//import 'package:grocerystore/pages/HomePage.dart';
import 'package:grocerystore/pages/Home_page.dart';
import 'package:grocerystore/pages/product.dart';
import 'package:grocerystore/pages/productDetails.dart';

class Boarding extends StatefulWidget {
  const Boarding({Key? key}) : super(key: key);

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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductListScreen(),
                  ),
                );
              },
              child: Container(
                height: 67,
                width: 353,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
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

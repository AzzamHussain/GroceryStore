import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.asset(
                  "assets/29959.jpg",
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

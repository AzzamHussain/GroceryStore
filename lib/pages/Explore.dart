import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Products'),
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.search),
        //     onPressed: () {
        //       // Handle search button tap
        //     },
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildSearchBar(), // Search bar widget
            _buildCardRow([
              _buildCard('Fruits and Vegetables', 'assets/ad1.png'),
              _buildCard('Meat & Fish', 'assets/Meat & Fish.png'),
            ]),
            _buildCardRow([
              _buildCard('Beverages', 'assets/Beverages.png'),
              _buildCard('Bakery', 'assets/Bakery.png'),
            ]),
            _buildCardRow([
              _buildCard('Eggs & Dairy', 'assets/Eggs & Dairy.png'),
              _buildCard('Oil & Ghee', 'assets/Oil & Ghee.png'),
            ]),
          ],
        ),
      ),
    );
  }

  // Widget to build the search bar
  Widget _buildSearchBar() {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        onChanged: (value) {
          // Handle search text change
        },
        decoration: InputDecoration(
          hintText: 'Search...',
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

  // Widget to build a row of cards
  Widget _buildCardRow(List<Widget> cards) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: cards,
      ),
    );
  }

  // Widget to build a card with title and image
  Widget _buildCard(String title, String imagePath) {
    return Container(
      width: 150,
      height: 200.51,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

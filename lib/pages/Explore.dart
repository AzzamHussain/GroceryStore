import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove back arrows
        title: Text(
          'Find Products',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(vertical: 16.0),
            //     child: Text(
            //       'Find Products',
            //       style: TextStyle(
            //         fontSize: 20.0,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),
            _buildSearchBar(), // Add the search bar
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

  Widget _buildCardRow(List<Widget> cards) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: cards,
      ),
    );
  }

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

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: TextField(
            onChanged: (value) {
              // Implement search functionality
            },
            decoration: InputDecoration(
              hintText: 'Search...',
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}

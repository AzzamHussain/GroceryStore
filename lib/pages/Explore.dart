import 'package:flutter/material.dart';
import 'beverages.dart'; // Import the BeveragesScreen

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Find Products'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildSearchBar(),
            _buildCardRow([
              _buildCard('Fruits and Vegetables', 'assets/ad1.png'),
              _buildCard('Meat & Fish', 'assets/Meat & Fish.png'),
            ]),
            _buildCardRow([
              _buildCard('Beverages', 'assets/Beverages.png', () {
                // Navigate to BeveragesScreen when Beverages card is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BeveragesScreen()),
                );
              }),
              _buildCard('Bakery',
                  'assets/Bakery.png'), // No onTap function needed for Bakery
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

  Widget _buildCard(String title, String imagePath, [Function()? onTap]) {
    return GestureDetector(
      onTap: onTap, // Execute the onTap function when card is tapped
      child: Container(
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

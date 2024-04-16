import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  List<Map<String, String>> products = [
    {'title': 'Fruits and Vegetables', 'imagePath': 'assets/ad1.png'},
    {'title': 'Meat & Fish', 'imagePath': 'assets/Meat & Fish.png'},
    {'title': 'Beverages', 'imagePath': 'assets/Beverages.png'},
    {'title': 'Bakery', 'imagePath': 'assets/Bakery.png'},
    {'title': 'Eggs & Dairy', 'imagePath': 'assets/Eggs & Dairy.png'},
    {'title': 'Oil & Ghee', 'imagePath': 'assets/Oil & Ghee.png'}
  ];

  List<Map<String, String>> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    filteredProducts = List.from(products);
  }

  void _search(String query) {
    setState(() {
      filteredProducts = products
          .where((product) =>
              product['title']!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Find Products',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Padding(
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
                    onChanged: _search,
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 0.8,
              ),
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                return _buildCard(
                  filteredProducts[index]['title']!,
                  filteredProducts[index]['imagePath']!,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String title, String imagePath) {
    return Container(
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

import 'package:flutter/material.dart';
import 'package:grocerystore/pages/product.dart';
import 'package:grocerystore/pages/productDetails.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<Product> filteredProducts = List.from(products);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fruit Shop'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      filteredProducts = products
                          .where((product) => product.name
                              .toLowerCase()
                              .contains(value.toLowerCase()))
                          .toList();
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
              height:
                  20), // Add some spacing between search and "Exclusive Offer"
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Text(
                  'Exclusive Offer',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    // Handle "See All" button tap
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green,
                    ),
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10), // Add some spacing below "Exclusive Offer"
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: filteredProducts.map((product) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.asset(
                        product.image,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Text(product.name),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:grocerystore/pages/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 364, // Set the width of the image
            height: 67, // Set the height of the image
            margin: EdgeInsets.only(
                top: 790.33, left: 25), // Set the position of the image
            child: Image.asset(
              product.image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          Text(
            product.name,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Implement your Add to Basket functionality here
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Colors.green), // Change button color to green
              minimumSize: MaterialStateProperty.all(
                  Size(364, 67)), // Set the size of the button
            ),
            child: Text(
              'Add to Basket',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

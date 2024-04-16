import 'package:flutter/material.dart';
import 'package:givestarreviews/givestarreviews.dart'; // Import the star rating package
import 'package:grocerystore/pages/product.dart'; // Import your Product class

class ProductDetailsScreen extends StatefulWidget {
  final Product product;

  ProductDetailsScreen({required this.product});

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.product.name,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              widget.product.description,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (_quantity > 1) {
                        _quantity--;
                      }
                    });
                  },
                ),
                Text(
                  '$_quantity',
                  style: TextStyle(fontSize: 20.0),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      _quantity++;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {
                    // Handle favorite button tap
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            // Expanded(
            //   child: Center(
            //     child: GiveStarReviews(
            //       starCount: 5,
            //       size: 30.0,
            //       color: Colors.amber,
            //       borderColor: Colors.grey,
            //       spacing: 5.0,
            //       rating: widget.product.rating, // Assuming your Product class has a 'rating' field
            //       onRatingChanged: (rating) {
            //         // Handle rating change
            //       },
            //     ),
            //   ),
            // ),
            // SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle add to basket button tap
              },
              child: Text('Add to Basket', style: TextStyle(fontSize: 16.0)),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              width: 329.34,
              height: 199.18,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.product.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

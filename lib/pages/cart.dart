import 'package:flutter/material.dart';
import 'package:grocerystore/pages/product.dart';

class CartScreen extends StatefulWidget {
  final Product product;
  final int quantity;

  CartScreen({required this.product, required this.quantity});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Image.asset(widget.product.image),
            title: Text(widget.product.name),
            subtitle: Text('${widget.product.price}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
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
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Implement checkout functionality
            },
            child: Text('Go to Checkout', style: TextStyle(fontSize: 16.0)),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              padding: EdgeInsets.symmetric(horizontal: 129.0, vertical: 20),
            ),
          ),
        ],
      ),
    );
  }
}

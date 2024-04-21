import 'package:flutter/material.dart';
import 'package:grocerystore/pages/cartitems.dart'; // Import CartItem

class CartScreen extends StatefulWidget {
  final List<CartItem> cartItems; // Pass list of cart items

  CartScreen({required this.cartItems});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double totalPrice = 0;

    // Calculate total price
    for (var item in widget.cartItems) {
      // Convert the price from String to double
      double price = double.parse(item.product.price);
      totalPrice += price * item.quantity;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(widget.cartItems[index].product.image),
                  title: Text(widget.cartItems[index].product.name),
                  subtitle: Text('${widget.cartItems[index].product.price}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            if (widget.cartItems[index].quantity > 1) {
                              widget.cartItems[index].quantity--;
                            }
                          });
                        },
                      ),
                      Text(
                        '${widget.cartItems[index].quantity}',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            widget.cartItems[index].quantity++;
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          setState(() {
                            widget.cartItems.removeAt(index);
                          });
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Implement checkout functionality
            },
            child: Text('Go to Checkout - \$${totalPrice.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 16.0)),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              padding: EdgeInsets.symmetric(vertical: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:grocerystore/pages/product.dart';

class FavouriteScreen extends StatefulWidget {
  final List<Product> favoriteProducts;
  final Function(Product) toggleFavorite;

  const FavouriteScreen({
    Key? key,
    required this.favoriteProducts,
    required this.toggleFavorite,
  }) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var product in widget.favoriteProducts)
              ListTile(
                leading: Image.asset(product.image),
                title: Text(product.name),
                trailing: IconButton(
                  icon: Icon(Icons.favorite, color: Colors.red),
                  onPressed: () {
                    widget.toggleFavorite(product);
                  },
                ),
              ),
            ElevatedButton(
              onPressed: () {
                // Implement add to basket button
              },
              child: Text('Add to Basket'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(19.0),
                    bottomLeft: Radius.circular(0.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

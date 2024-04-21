import 'package:grocerystore/pages/product.dart';
import 'package:grocerystore/pages/cart.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, required this.quantity});
}

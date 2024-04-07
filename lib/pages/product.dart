class Product {
  final String name;
  final String image;

  Product({required this.name, required this.image});
}

final List<Product> products = [
  Product(name: 'Apple', image: 'assets/apple.png'),
  Product(name: 'Banana', image: 'assets/banana.png'),
  Product(name: 'Orange', image: 'assets/orange.png'),
  // Add more products as needed
];

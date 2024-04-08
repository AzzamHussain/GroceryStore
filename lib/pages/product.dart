class Product {
  final String name;
  final String image;
  final String price;

  Product({required this.name, required this.image, required this.price});
}

final List<Product> products = [
  Product(name: 'Apple', image: 'assets/apple.png', price: 'Rs:150'),
  Product(name: 'Banana', image: 'assets/banana.png', price: 'Rs:100'),
  Product(name: 'Orange', image: 'assets/orange.png', price: 'Rs:230'),
  Product(
      name: 'pomegranate', image: 'assets/pomegranate.png', price: 'Rs:560'),
  Product(name: 'papaya', image: 'assets/papaya.png', price: '340'),

  // Add more products as needed
];

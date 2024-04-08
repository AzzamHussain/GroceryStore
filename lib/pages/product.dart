class Product {
  final String name;
  final String image;
  final String price;
  final String quantity;

  Product(
      {required this.name,
      required this.image,
      required this.price,
      required this.quantity});
}

final List<Product> products = [
  Product(
      name: 'Apple',
      image: 'assets/apple.png',
      price: 'Rs:150',
      quantity: '1Kg'),
  Product(
      name: 'Banana',
      image: 'assets/banana.png',
      price: 'Rs:100',
      quantity: '1 Dozen'),
  Product(
      name: 'Orange',
      image: 'assets/orange.png',
      price: 'Rs:230',
      quantity: '1 Dozen'),
  Product(
      name: 'pomegranate',
      image: 'assets/pomegranate.png',
      price: 'Rs:560',
      quantity: '1Kg'),
  Product(
      name: 'papaya',
      image: 'assets/papaya.png',
      price: '340',
      quantity: '1Kg'),

  // Add more products as needed
];

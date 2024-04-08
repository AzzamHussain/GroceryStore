class Product {
  final String name;
  final String image;
  final String price;
  final String quantity;

  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
  });
}

final List<Product> products = [
  Product(
    name: 'Apple',
    image: 'assets/apple.png',
    price: 'Rs:150',
    quantity: '1Kg',
  ),
  Product(
    name: 'Banana',
    image: 'assets/banana.png',
    price: 'Rs:100',
    quantity: '1 Dozen',
  ),
  Product(
    name: 'Orange',
    image: 'assets/orange.png',
    price: 'Rs:230',
    quantity: '1 Dozen',
  ),
  Product(
    name: 'pomegranate',
    image: 'assets/pomegranate.png',
    price: 'Rs:560',
    quantity: '1Kg',
  ),
  Product(
    name: 'papaya',
    image: 'assets/papaya.png',
    price: '340',
    quantity: '1Kg',
  ),
];

final List<Product> bestSellingProducts = [
  Product(
    name: 'Eggs',
    image: 'assets/eggs.png',
    price: 'Rs:240',
    quantity: '1 Dozen',
  ),
  Product(
    name: 'Flour(Atta)',
    image: 'assets/flour.png',
    price: 'Rs:5000',
    quantity: '10Kg',
  ),
  Product(
    name: 'ParsleyLeaves',
    image: 'assets/parsleyleaves.png',
    price: 'Rs:100',
    quantity: '50g',
  ),
  Product(
    name: 'Red Chilli',
    image: 'assets/RedChilli.png',
    price: 'Rs:150',
    quantity: '50g',
  ),
];

final List<Product> groceriesProducts = [
  // Your groceries products here
];

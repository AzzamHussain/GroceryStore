class Product {
  final String name;
  final String image;
  final String price;
  final String quantity;
  final String description;

  Product(
      {required this.name,
      required this.image,
      required this.price,
      required this.quantity,
      required this.description});
}

final List<Product> products = [
  Product(
      name: 'Apple',
      image: 'assets/apple.png',
      price: 'Rs:150',
      quantity: '1Kg',
      description: 'Fresh Red Apple'),
  Product(
      name: 'Banana',
      image: 'assets/banana.png',
      price: 'Rs:100',
      quantity: '1 Dozen',
      description: 'Imported Bananas'),
  Product(
      name: 'Orange',
      image: 'assets/orange.png',
      price: 'Rs:230',
      quantity: '1 Dozen',
      description: 'Stocked Oranges'),
  Product(
      name: 'pomegranate',
      image: 'assets/pomegranate.png',
      price: 'Rs:560',
      quantity: '1Kg',
      description: 'Turkish Pomegranates'),
  Product(
      name: 'papaya',
      image: 'assets/papaya.png',
      price: '340',
      quantity: '1Kg',
      description: 'Fresh Papaya'),
];

final List<Product> bestSellingProducts = [
  Product(
      name: 'Eggs',
      image: 'assets/eggs.png',
      price: 'Rs:240',
      quantity: '1 Dozen',
      description: 'Desi anday'),
  Product(
      name: 'Flour(Atta)',
      image: 'assets/flour.png',
      price: 'Rs:5000',
      quantity: '10Kg',
      description: 'chakki atta'),
  Product(
      name: 'ParsleyLeaves',
      image: 'assets/parsleyleaves.png',
      price: 'Rs:100',
      quantity: '50g',
      description: 'Fresh Dhanya'),
  Product(
      name: 'Red Chilli',
      image: 'assets/RedChilli.png',
      price: 'Rs:150',
      quantity: '50g',
      description: 'Red chillis to enhance your taste buds'),
];

final List<Product> groceriesProducts = [
  // Your groceries products here
];

class Product {
  final String name;
  final String image;
  final String price;
  final String quantity;
  final String description;
  final double rating;

  Product(
      {required this.name,
      required this.image,
      required this.price,
      required this.quantity,
      required this.description,
      required this.rating});
}

final List<Product> products = [
  Product(
      name: 'Apple',
      image: 'assets/apple.png',
      price: 'Rs:150',
      quantity: '1Kg',
      description: 'Fresh Red Apple',
      rating: 4.5),
  Product(
      name: 'Banana',
      image: 'assets/banana.png',
      price: 'Rs:100',
      quantity: '1 Dozen',
      description: 'Imported Bananas',
      rating: 5.6),
  Product(
      name: 'Orange',
      image: 'assets/orange.png',
      price: 'Rs:230',
      quantity: '1 Dozen',
      description: 'Stocked Oranges',
      rating: 1.2),
  Product(
      name: 'pomegranate',
      image: 'assets/pomegranate.png',
      price: 'Rs:560',
      quantity: '1Kg',
      description: 'Turkish Pomegranates',
      rating: 2.3),
  Product(
      name: 'papaya',
      image: 'assets/papaya.png',
      price: '340',
      quantity: '1Kg',
      description: 'Fresh Papaya',
      rating: 9.0),
    
];

final List<Product> bestSellingProducts = [
  Product(
      name: 'Eggs',
      image: 'assets/eggs.png',
      price: 'Rs:240',
      quantity: '1 Dozen',
      description: 'Desi anday',
      rating: 7.8),
  Product(
      name: 'Flour(Atta)',
      image: 'assets/flour.png',
      price: 'Rs:5000',
      quantity: '10Kg',
      description: 'chakki atta',
      rating: 9.9),
  Product(
      name: 'ParsleyLeaves',
      image: 'assets/parsleyleaves.png',
      price: 'Rs:100',
      quantity: '50g',
      description: 'Fresh Dhanya',
      rating: 5.8),
  Product(
      name: 'Red Chilli',
      image: 'assets/RedChilli.png',
      price: 'Rs:150',
      quantity: '50g',
      description: 'Red chillis to enhance your taste buds',
      rating: 5.1),
];

final List<Product> groceriesProducts = [
  // Your groceries products here
];

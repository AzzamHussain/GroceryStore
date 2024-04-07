import 'package:flutter/material.dart';
import 'package:grocerystore/pages/product.dart';
//import 'package:grocerystore/pages/HomePage/product.dart';
import 'package:grocerystore/pages/productDetails.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<Product> filteredProducts = List.from(products);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fruit Shop'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    filteredProducts = products
                        .where((product) => product.name
                            .toLowerCase()
                            .contains(value.toLowerCase()))
                        .toList();
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Stack(
            children: [
              Image.asset(
                'assets/adv.jpeg',
                width: 367,
                height: 114.99,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 210.96,
                left: 23.5,
                child: Container(
                  width: 367,
                  height: 114.99,
                  //color: Colors.transparent, //
                ),
              ),
              // Positioned(
              //   top: 247.43,
              //   left: 169.54,
              //   child: Image.asset(
              //     'assets/ad2.png',
              //     width: 188,
              //     height: 44.06,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              // Positioned(
              //   top: 213.86,
              //   left: 29.13,
              //   child: Image.asset(
              //     'assets/ad1.png',
              //     width: 122.36,
              //     height: 105.12,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              // Positioned(
              //   top: 210.96,
              //   left: 23.5,
              //   child: Container(
              //     width: 367,
              //     height: 114.99,
              //     //color: Colors.transparent,
              //   ),
              // ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: (filteredProducts.length / 2).ceil(),
              itemBuilder: (context, rowIndex) {
                int startIndex = rowIndex * 2;
                int endIndex = startIndex + 2 < filteredProducts.length
                    ? startIndex + 2
                    : filteredProducts.length;
                List<Product> rowProducts =
                    filteredProducts.sublist(startIndex, endIndex);

                return Row(
                  children: rowProducts
                      .map((product) => Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ProductDetailsScreen(product: product),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      product.image,
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                    Text(product.name),
                                  ],
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

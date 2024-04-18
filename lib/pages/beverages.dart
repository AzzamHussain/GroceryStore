import 'package:flutter/material.dart';

class BeveragesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beverages'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildCardRow([
              _buildBeverageCard('Coca Cola', 'cocacola.png'),
              _buildBeverageCard('Sprite', 'sprite.png'),
            ]),
            _buildCardRow([
              _buildBeverageCard('Apple Juice', 'applejuice.png'),
              _buildBeverageCard('Mango Juice', 'mango juice.png'),
            ]),
            _buildCardRow([
              _buildBeverageCard('Diet Cola', 'dietcoke.png'),
              _buildBeverageCard('Pepsi', 'pepsi.png'),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildCardRow(List<Widget> cards) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: cards,
      ),
    );
  }

  Widget _buildBeverageCard(String title, String imagePath) {
    return Container(
      width: 173.32,
      height: 248.51,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          bottomLeft: Radius.circular(18),
        ),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/$imagePath',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8),
          Text(
            '250ml, Price',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Amount',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8),
              InkWell(
                onTap: () {
                  // Implement increment functionality
                },
                child: Container(
                  width: 17,
                  height: 17,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

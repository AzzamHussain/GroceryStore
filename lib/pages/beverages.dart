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
      width: 150.32,
      height: 200.51,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(18),
        //   bottomLeft: Radius.circular(18),
        // ),color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.lightGreen.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
        // border: Border.all(color: Colors.white12),
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
                'Rs 200',
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
                  width: 40,
                  height: 40,
                  //decoration: BoxDecoration(
                  // shape: BoxShape.circle,
                  // // color: Colors.green,
                  // // borderRadius: BorderRadius.circular(8)),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

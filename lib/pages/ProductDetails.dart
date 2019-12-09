import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  // get data from Product use object
  final product_detail_menu;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetail(
      {this.product_detail_menu,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        // change background color
        backgroundColor: Colors.red,
        title: Text('Fashapp'),
        actions: <Widget>[
          // add icon search in toolbar
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {}),
          // mengeset color icon menjadi white
        ],
      ),
      body: new ListView(
        // make listview wigth container have height 300.0
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                // get picture into header jumbotron
                child: Image.asset(widget.product_detail_picture),
              ),
            )
          )
        ],
      ),
    );
  }
}

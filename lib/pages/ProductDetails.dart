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
                footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    // membuat judul
                    leading: new Text(
                      widget.product_detail_menu,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    title: new Row(
                      // children digunakan ketika suatu constructor meniliki banyak anak
                      children: <Widget>[
                        Expanded(
                          // change text use product detail old price use string from int
                          child: new Text(
                            "\$${widget.product_detail_old_price}",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                        Expanded(
                            child: new Text(
                          "\$${widget.product_detail_new_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ))
                      ],
                    ),
                  ),
                ),
              )),
          // make spinner
          Row(
            children: <Widget>[
              // that size button
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              // that color button
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Color"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              // that Qty button
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qty"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          // make spinner
          Row(
            children: <Widget>[
              // make button buy
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy Now")
                ),
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red,),),
              new IconButton(icon: Icon(Icons.favorite_border), color: Colors.red, onPressed: (){})
            ],
          )
        ],
      ),
    );
  }
}

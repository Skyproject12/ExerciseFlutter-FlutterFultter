import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

// import component
import 'package:flutter_flu/component/Horizontal_list.dart';
import 'package:flutter_flu/component/Products.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // call image carousel
    Widget image_carousel = new Container(
      // make slidder with height
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        // call from images folder
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/m2.jpg'),
        ],
        // change auto play in image slidder
        autoplay: true,
        // kecepatan dari animation image slidder
        animationCurve: Curves.fastOutSlowIn,
        // wakt7u durasi
        animationDuration: Duration(microseconds: 1000),
        // mengatur size dot
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
    );
    // merupakan suatu layout yang mengatur design baik itu appbars, drawers, snackbars
    return Scaffold(
      // melakukan custom in toolbar
      appBar: new AppBar(
        // change background color
        backgroundColor: Colors.red,
        title: Text('ShopApp'),
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
      drawer: new Drawer(
        // make simple drawer
        child: new ListView(
          children: <Widget>[
            // that can make header for drawer
            new UserAccountsDrawerHeader(
              accountName: Text('Santos Enoque'),
              accountEmail: Text('santosenoque@gmail.com'),
              currentAccountPicture: GestureDetector(
                  // make circle avatar
                  child: new CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: Colors.white))),
              decoration: new BoxDecoration(
                  // change box decoration color is red
                  color: Colors.red),
            ),

            //body the drawer
            InkWell(
              // make onclick
              onTap: () {},
              child: ListTile(
                // make isi  in drawer
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              // make onclick
              onTap: () {},
              child: ListTile(
                // make isi  in drawer
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              // make onclick
              onTap: () {},
              child: ListTile(
                // make isi  in drawer
                title: Text('My orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              // make onclick
              onTap: () {},
              child: ListTile(
                // make isi  in drawer
                title: Text('Category'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              // make onclick
              onTap: () {},
              child: ListTile(
                // make isi  in drawer
                title: Text('Favorite'),
                leading: Icon(Icons.favorite),
              ),
            ),
            // memberi batas kepada suatu menu drawer
            Divider(),
            InkWell(
              // make onclick
              onTap: () {},
              child: ListTile(
                // make isi  in drawer
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              // make onclick
              onTap: () {},
              child: ListTile(
                // make isi  in drawer
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),
      // set body
      body: new ListView(
        // menampung slidder listview
        children: <Widget>[
          image_carousel,
          // menambah padding
          new Padding(
            padding: const EdgeInsets.all(8.0),
            // menambah category
            child: new Text('Categories'),
          ),
          // horizontal list view
          HorizontalList(),
          new Padding(
            padding: const EdgeInsets.all(20.0),
            // menambah category
            child: new Text('Recent product'),
          ),
          // gridview
          Container(
            height: 320.0,
            // call class product from product file
            child: Products(),
          )
        ],
      ),
    );
  }
}

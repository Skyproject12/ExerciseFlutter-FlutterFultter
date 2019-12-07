import 'package:flutter/material.dart';

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
            currentAccountPicture:GestureDetector(
              // make circle avatar
              child:new CircleAvatar(
                backgroundColor: Colors.grey,
                child:Icon(Icons.person, color:Colors.white)
              )
            ) ,),
          ],
        ),
      ),
    );
  }
}

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
              onTap: (){},
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
              onTap: (){},
              child: ListTile(
                // make isi  in drawer
                title: Text('Settings'),
                leading: Icon(Icons.settings),

              ),
            ),
            InkWell(
              // make onclick
              onTap: (){},
              child: ListTile(
                // make isi  in drawer
                title: Text('About'),
                leading: Icon(Icons.help),

              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // membuat list memiliki lebar sekitar 80
      height: 80.0,
      child: ListView(
        // membuuat list horizontal
        scrollDirection: Axis.horizontal,
        // make list view with orientation horizontal
        children: <Widget>[
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_caption,
    this.image_location
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child: InkWell(onTap: () {},
        child: ListTile(
          title: Image.asset(image_location),
          subtitle: Text(image_caption),
        ),
      ),
    );
  }
}


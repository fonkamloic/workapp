import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function onpress;
  ProductControl({this.onpress});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            onpress({'title': 'sweets', 'image': 'assets/images/food.jpg'});
          },
          child: Text("Add Product"),
        ),
      ],
    );
  }
}

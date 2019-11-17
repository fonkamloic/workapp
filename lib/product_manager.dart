import 'package:flutter/material.dart';
import 'package:good/product_control.dart';
import 'package:good/products.dart';

class ProductManager extends StatefulWidget {
  @override
  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  _addProduct(String item) {
    setState(() {
      _products.add(item);
    });
  }

  List<String> _products = ['Food Tester'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(1.0),
          child: ProductControl(onpress: _addProduct),
        ),
        Expanded(
          child: Products(
            products: _products,
          ),
        ),
      ],
    );
  }
}

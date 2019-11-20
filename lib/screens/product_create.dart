import 'package:flutter/material.dart';
import 'package:good/product_control.dart';
import 'package:good/products.dart';

class ProductCreate extends StatelessWidget {
  final List<Map<String, String>> _products;
  final Function _addProduct;
  final Function _deleteProduct;
  ProductCreate(this._products, this._deleteProduct, this._addProduct);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Product create page"),
    );
  }
}

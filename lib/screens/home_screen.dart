import 'package:flutter/material.dart';
import 'package:good/product_manager.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EasyList"),
      ),
      body: ProductManager(),
    );
  }
}

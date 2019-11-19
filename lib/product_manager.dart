import 'package:flutter/material.dart';
import 'package:good/product_admin.dart';
import 'package:good/product_control.dart';
import 'package:good/products.dart';
import 'package:good/screens/product_create.dart';
import 'package:good/screens/product_list.dart';

class ProductManager extends StatefulWidget {
  @override
  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  _addProduct(Map<String, String> item) {
    setState(() {
      _products.add(item);
    });
  }

  _deleteProduct(int index) {
    _products.removeAt(index);
  }

  List<Map<String, String>> _products = [
    {'title': 'Food Tester', 'image': 'assets/images/food.jpg'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("EasyList"),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text("Menu"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductAdmin()));
                },
                title: Text('Manage Product'),
              ),
              ListTile(
                onTap: () {},
                title: Text('Details'),
              )
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(1.0),
              child: ProductControl(onpress: _addProduct),
            ),
            Expanded(
              child: Products(
                products: _products,
                deleteProduct: _deleteProduct,
              ),
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("EasyList"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "Create Products",
                icon: Icon(Icons.create),
              ),
              Tab(text: "My products", icon: Icon(Icons.list)),
            ],
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text("Menu"),
              ),
              ListTile(
                onTap: () {},
                title: Text('Manage Product'),
              ),
              ListTile(
                onTap: () {},
                title: Text('Details'),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductCreate(_products, _deleteProduct, _addProduct),
            ProductList(),
          ],
        ),
      ),
    );
  }
}

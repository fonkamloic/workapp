import 'package:flutter/material.dart';
import 'package:good/screens/product_screen.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products({this.products});

  Widget _productItembuilder(BuildContext context, int index) {
    return Card(
      elevation: 5,
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/food.jpg'),
          Text(products[index]),
          ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FlatButton(
                child: Text("Details"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductScreen()));
                },
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return products.length > 0
        ? ListView.builder(
            itemBuilder: _productItembuilder,
            itemCount: products.length,
          )
        : Center(
            child: Text("No products found, please add some!"),
          );
  }
}

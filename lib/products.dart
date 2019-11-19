import 'package:flutter/material.dart';
import 'package:good/screens/product_screen.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products({this.products, this.deleteProduct});

  Widget _productItembuilder(BuildContext context, int index) {
    return Card(
      elevation: 5,
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FlatButton(
                child: Text("Details"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductScreen(
                          products[index]["title"], products[index]['image']),
                    ),
                  ).then((value) {
                    if (value) {
                      deleteProduct(index);
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                content: Text('Product deleted Successfully!'),
                              ));
                    }
                  });
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

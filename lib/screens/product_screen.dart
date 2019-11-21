import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final String title;
  final String image;
  ProductScreen(this.title, this.image);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print("Back botton pressed");
        Navigator.pop(context, true);
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Product Detail"),
        ),
        body: Container(
          child: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(image),
              Text(title),
              RaisedButton(
                color: Colors.redAccent,
                child: Text("Delete"),
                onPressed: () => Navigator.pop(context, true),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:good/product_manager.dart';
import 'package:good/screens/product_screen.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductManager(),
                  ));
            },
            child: Text("login"),
          ),
        ));
  }
}

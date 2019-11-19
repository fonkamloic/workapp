import 'package:flutter/material.dart';
import 'package:good/product_manager.dart';
import 'package:good/products.dart';
import 'package:good/screens/auth.dart';
import 'package:good/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.amber,
          accentColor: Colors.lime,
          buttonColor: Colors.limeAccent),
      home: AuthScreen(),
    );
  }
}

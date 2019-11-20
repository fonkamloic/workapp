import 'package:flutter/material.dart';
import 'package:good/screens/auth.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Center(
          child: ListTile(
            onTap: () {},
            title: Text('Menu'),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("EasyList"),
      ),
      body: AuthScreen(),
    );
  }
}

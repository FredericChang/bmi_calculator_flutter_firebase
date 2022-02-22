import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Home',
          ),
        ),
      ),
      theme: ThemeData(accentColor: Colors.pink,
      primaryColor: Colors.grey),
    );
  }
}

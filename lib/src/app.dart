import 'package:bmi_calculator_flutter/screens/home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(accentColor: Colors.pink,
      primaryColor: Colors.grey),
    );
  }
}

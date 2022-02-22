import 'package:bmi_calculator_flutter/src/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/screens/input_page.dart';
import 'package:bmi_calculator_flutter/src/app.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


// void main() => runApp(BMICalculator());
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.teal,
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.yellow)),
        primaryColor: Colors.orange,
      ),
      // ThemeData(
      //   colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange, )
      //       .copyWith( secondary: Colors.green, background: Colors.purple),
      //   scaffoldBackgroundColor: Colors.teal,
      //   textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.yellow)),
      //   // backgroundColor: Colors.black,
      //   // colorSchemeSeed: ColorScheme.fromSwatch(backgroundColor: Colors.black)
      //
      //   // primaryColor: Color(0x0A0E99),
      //   // secondaryHeaderColor: Colors.purple,
      //
      //   // colorScheme:
      // ),
      home: const InputPage(),
    );
  }
}


import 'package:bmi_calculator_flutter/screens/entry.dart';
import 'package:flutter/material.dart';

import '../src/models/entry.dart';

class HomeScreen extends StatelessWidget {
  final Entry _entry = new Entry(entryId: '', date: '', entry: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Data'),

      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => EntryScreen(entry: _entry,)));
        },
      ),
    );
  }


}

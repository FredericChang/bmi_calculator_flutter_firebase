import 'package:bmi_calculator_flutter/src/app.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/src/models/entry.dart';
import 'package:flutter/foundation.dart';

class EntryScreen extends StatelessWidget {

  final Entry entry;
  EntryScreen({required this.entry});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entry'),
        actions: [
        IconButton(icon: Icon(Icons.calendar_today),
          onPressed: (){
            _pickDate(context).then((value) {
              print(value);
            });
          },),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'DailyEntry',
                border: InputBorder.none,
              ),
              maxLines: 12,
              minLines: 10,
            ),
            RaisedButton(
              color: Colors.teal,
              child: Text('Save',
                style: TextStyle(color: Colors.pink[200]),
              ),
              onPressed: (){},
            ),
            (entry.entryId != '') ? RaisedButton(
              color: Colors.red,
              child: Text('Delete',
                style: TextStyle(color: Colors.pink[200]),
              ),
              onPressed: (){},
            ):Container(),
          ],
        ),
      )
    );
  }

  Future<DateTime?> _pickDate(BuildContext context) async {

    final DateTime? picked = await showDatePicker(
        context: context, initialDate: DateTime.now(), firstDate: DateTime(2019), lastDate: DateTime(2050));
    if (picked != null) {
      return picked;
    }
  }
}

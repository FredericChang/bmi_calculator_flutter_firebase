import 'package:bmi_calculator_flutter/src/app.dart';
import 'package:flutter/material.dart';

class EntryScreen extends StatelessWidget {

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

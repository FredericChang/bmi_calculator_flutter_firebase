import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class cardChildWidget extends StatelessWidget {

  cardChildWidget({required this.colour,required this.icon, required this.textName});

  final Color colour;
  final IconData icon;
  final String textName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: colour,
          size: 40.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(textName,
          style: kLabelTextStyle)
      ],
    );
  }
}

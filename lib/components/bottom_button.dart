import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.onTap, required this.bottonTitle}) : super(key: key);
  final Function onTap;
  final String bottonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();
      } ,
      child: Container(
        child: Center(
          child: Text(bottonTitle,
              style: kLargeTextstyle),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
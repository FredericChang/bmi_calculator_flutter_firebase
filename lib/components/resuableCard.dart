import 'package:flutter/material.dart';


//Refactor with StatelessWidget
class ReusableCard extends StatelessWidget {

  ///stateless could not be changed.
  ///this will allowed user to assign Color
  ///Initializing
  /// @required meant you have to add
  const ReusableCard({Key? key, required this.colour,required this.cardChild,required this.onPress}) : super(key: key);

  /// property
  /// Final could not be changed. verse Const keyword.
  final Color colour;
  final Widget cardChild;
  final VoidCallback onPress;

  // const ReusableCard({
  //   Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(// color: Colors.pink,
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}

import 'package:bmi_calculator_flutter/components/bottom_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/resuableCard.dart';

class ResultsPage extends StatelessWidget {


  ResultsPage({Key? key, required this.bmiResult, required this.resultText, required this.interpretation}) : super(key: key);
  int calcValue = 180;
  int weight = 60;

  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Your Result',
                  style: kTitleTextstyle,
                ),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActivateColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(bmiResult, style: kResultTextstyle,),
                  Text(resultText, style: kBMITextstyle,),
                  Text(interpretation, style: kBodyTestTextstyle, textAlign: TextAlign.center,),
                ],
              ),onPress: (){},
            ),
          ),
          BottomButton(bottonTitle: 'Recalculate',
                       onTap: () {

                         Navigator.pop(context);
                       },
                      )
        ],
      )
    );
  }
}

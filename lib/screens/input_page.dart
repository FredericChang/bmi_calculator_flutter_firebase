import 'package:bmi_calculator_flutter/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator_flutter/components/resuableCard.dart';
import 'package:bmi_calculator_flutter/components/icon_content.dart';
import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/components/bottom_button.dart';
import 'package:bmi_calculator_flutter/components/round_icon_button.dart';
import 'package:bmi_calculator_flutter/calculator_brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender = Gender.male;
  int height = 180;
  int weight = 60;
  int age = 18;

  Color maleCardColour = kInactivateColour;
  Color femaleCardColour = kInactivateColour;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.teal,
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour : selectedGender == Gender.female ? kActivateColour : kInactivateColour,
                      cardChild: cardChildWidget(icon: Icons.facebook, colour: Colors.pink, textName: 'Female',),
                    )
                ),
                Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour : selectedGender == Gender.male ? kActivateColour : kInactivateColour,
                      cardChild: cardChildWidget(icon: FontAwesomeIcons.facebook, colour: Colors.pink, textName: 'Male',),
                    )
                ),
              ],
            )),
            Expanded(
                child: ReusableCard(
                  colour : kActivateColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                          'Height',
                          style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(height.toString(),
                          style: kWeightstyle,),
                          const Text('cm',
                            style: kLabelTextStyle,),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                          overlayColor: const Color(0x29EB1555),
                          thumbColor: const Color(0xFFEB1555),
                          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0),
                        ) ,
                        child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          // activeColor: Colors.yellow,
                          // inactiveColor: Colors.green,
                          onChanged: (double newValue){
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ),
                    ],
                  ), onPress: () {  },
                )
            ),
            Expanded(child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                        colour : kActivateColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'Weight',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                weight.toString(),
                                style: kWeightstyle,
                              ),
                              const Text(
                                'kg',
                                style: kLabelTextStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                },
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(icon: FontAwesomeIcons.minus,
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },),
                            ],
                          )
                        ],
                      ), onPress: () {  },
                    )
                ),
                Expanded(
                    child: ReusableCard(
                        colour : kActivateColour,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              "Age",
                              style: kLabelTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  age.toString(),
                                  style: kWeightstyle,
                                ),
                                const Text(
                                  'years',
                                  style: kLabelTextStyle,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(icon: FontAwesomeIcons.minus,
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },),
                              ],
                            )
                          ],
                        ), onPress: () {  },
                    )
                ),
              ],
            )),
            BottomButton(
              bottonTitle: 'CALCULATE',
              onTap: (){
                CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);

                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ResultsPage(
                      bmiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interpretation: calc.getInterpretation(),
                    )
                  )
                );
              },
            ),
          ],
        )
    );
  }
}





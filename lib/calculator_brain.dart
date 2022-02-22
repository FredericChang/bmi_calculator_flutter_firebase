import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi = 0;
  CalculatorBrain({required this.height, required this.weight});


  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Norma;';
    } else {
      return 'Undererweight';
    }
  }

  String getInterpretation(){
    if (_bmi >= 25) {
      return 'Eat Less';
    } else if (_bmi > 18.5) {
      return 'Keep;';
    } else {
      return 'Eat More';
    }
  }

}
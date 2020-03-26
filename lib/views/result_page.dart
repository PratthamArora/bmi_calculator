import 'package:bmicalculator/components/calculate_button.dart';
import 'package:bmicalculator/components/reusable_card.dart';
import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpret;

  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpret});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultAnsStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    interpret,
                    textAlign: TextAlign.center,
                    style: kResultBodyStyle,
                  ),
                ],
              ),
            ),
          ),
          CalculateButton(
            title: 'RE-CALCULATE',
            onClick: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

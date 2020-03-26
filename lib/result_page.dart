import 'package:bmicalculator/constants.dart';
import 'package:bmicalculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
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
                    'Result',
                    style: kResultAnsStyle,
                  ),
                  Text(
                    '18.3',
                    style: kBmiTextStyle,
                  ),
                  Text(
                    'bmi result....',
                    textAlign: TextAlign.center,
                    style: kResultBodyStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

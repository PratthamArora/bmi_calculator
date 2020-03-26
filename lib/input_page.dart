import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const btmContHeight = 60.0;
const activeCardColour = Color(0xFF1D1E33);

const inActiveCardColour = Color(0xFF111328);

const btmContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inActiveCardColour;
  Color femaleCardColor = inActiveCardColour;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inActiveCardColour) {
        maleCardColor = activeCardColour;
      } else {
        maleCardColor = inActiveCardColour;
      }
    } else {
      if (femaleCardColor == inActiveCardColour) {
        femaleCardColor = activeCardColour;
      } else {
        femaleCardColor = inActiveCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  ///male card
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: IconContent(
                          text: 'MALE', iconLogo: FontAwesomeIcons.mars),
                    ),
                  ),
                ),
                Expanded(
                  ///female card
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      cardChild: IconContent(
                          text: 'FEMALE', iconLogo: FontAwesomeIcons.venus),
                      colour: femaleCardColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: btmContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            height: btmContHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

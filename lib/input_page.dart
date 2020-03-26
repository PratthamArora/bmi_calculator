import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const btmContHeight = 60.0;
const activeCardColour = 0xFF1D1E33;
const btmContainerColour = 0xFFEB1555;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(
                    cardChild: IconContent(
                        text: 'MALE', iconLogo: FontAwesomeIcons.mars),
                    colour: Color(activeCardColour),
                  ),
                ),
                Expanded(
                  ///female card
                  child: ReusableCard(
                    cardChild: IconContent(
                        text: 'FEMALE', iconLogo: FontAwesomeIcons.venus),
                    colour: Color(activeCardColour),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Color(activeCardColour),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Color(activeCardColour),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(activeCardColour),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(btmContainerColour),
            margin: EdgeInsets.only(top: 10.0),
            height: btmContHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

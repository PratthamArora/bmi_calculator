import 'package:flutter/material.dart';

import '../constants.dart';

class CalculateButton extends StatelessWidget {
  final Function onClick;
  final String title;

  CalculateButton({
    @required this.title,
    @required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kCalculateStyle,
          ),
        ),
        color: kBtmContainerColour,
        height: kBtmContHeight,
        width: double.infinity,
      ),
    );
  }
}

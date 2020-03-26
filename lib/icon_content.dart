import 'package:flutter/material.dart';

const textStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8e98),
);

class IconContent extends StatelessWidget {
  final String text;
  final IconData iconLogo;

  IconContent({@required this.text, @required this.iconLogo});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconLogo,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(text, style: textStyle),
      ],
    );
  }
}

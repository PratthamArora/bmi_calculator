import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData child;
  final Function onClick;

  RoundIconButton({@required this.child, @required this.onClick});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(child),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onClick,
    );
  }
}

import 'package:flutter/material.dart';
import 'const.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed, this.child});

  final IconData icon;
  final Function onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(this.icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: buttonColour,
      shape: CircleBorder(
        side: BorderSide(
          style: BorderStyle.solid,
          width: 0.0,
        ),
      ),

    );
  }
}

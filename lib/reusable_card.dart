import 'package:flutter/material.dart';

class ReusableBox extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onBoxTap;

  ReusableBox({@required this.colour, @required this.cardChild, @required this.onBoxTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onBoxTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}

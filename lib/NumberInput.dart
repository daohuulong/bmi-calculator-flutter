import 'package:bmi_calculator/icon_button.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'const.dart';

class NumberInput extends StatefulWidget {
  NumberInput({this.label, this.firstValue});

  final int firstValue;
  final String label;

  @override
  _NumberInputState createState() => _NumberInputState();
}

class _NumberInputState extends State<NumberInput> {
  int value = 0;
  @override
  void initState() {
    // TODO: implement initState
    if (widget.firstValue != null) {
      value = widget.firstValue;
    }

    super.initState();
  }

  int getValue(){
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReusableBox(
        colour: cardColour,
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.label,
              style: mediumText,
            ),
            Text(
              value.toString(),
              style: largeText,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RoundIconButton(
                  icon: FontAwesomeIcons.minus,
                  onPressed: () {
                    setState(() {
                      value--;
                    });
                  },
                  child: null,
                ),
                SizedBox(
                  width: 20,
                ),
                RoundIconButton(
                  icon: FontAwesomeIcons.plus,
                  onPressed: () {
                    setState(() {
                      value++;
                    });
                  },
                  child: null,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

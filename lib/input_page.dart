import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'gender_card.dart';
import 'const.dart';
import 'NumberInput.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  maleCheck() {
    setState(() {
      this.isMaleChecked = true;
    });
  }

  femaleCheck() {
    setState(() {
      this.isMaleChecked = false;
    });
  }

  bool isMaleChecked = false;
  int height = 150;
  int weight = 60;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: ReusableBox(
                    onBoxTap: this.maleCheck,
                    colour: isMaleChecked ? cardColour : inActiveCardColour,
                    cardChild: GenderCard(
                      isMale: true,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableBox(
                    onBoxTap: this.femaleCheck,
                    colour: isMaleChecked ? inActiveCardColour : cardColour,
                    cardChild: GenderCard(
                      isMale: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableBox(
                    colour: cardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'HEIGHT',
                          style: mediumText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: largeText,
                            ),
                            Text(
                              'cm',
                              style: mediumText,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: Colors.pink,
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.grey,
                          ),
                          child: Slider(
//                            activeColor: Colors.white,
//                            inactiveColor: Colors.grey,
                            min: 120.0,
                            max: 220.0,
                            value: height.toDouble(),
                            onChanged: (double newVal) {
                              setState(() {
                                height = newVal.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ), onBoxTap: null,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                NumberInput(
                  firstValue: weight,
                  label: 'WEIGHT',
                ),
                NumberInput(
                  firstValue: age,
                  label: 'AGE',
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFAA1555),
            width: double.infinity,
            height: bottomHeight,
            child: Center(
              child: GestureDetector(
                onTap: (){

                },
                child: Text(
                  'CALCULATE',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

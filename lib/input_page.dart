import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const double bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xFF1D1e33);
const Color bottomContainerColor = Color(0xFFEB1555);
const Color inactiveCardColor = Color(0xFF111328);

enum GenderType {
  MALE, FEMALE
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  GenderType selectedGender;

//  void updateColor (GenderType gender){
//    if(gender == GenderType.MALE){
//      if(maleCardColor == inactiveCardColor){
//        maleCardColor = activeCardColor;
//        femaleCardColor = inactiveCardColor;
//      }
//      else{
//        maleCardColor = inactiveCardColor;
//      }
//    }
//    else if(gender == GenderType.FEMALE){
//      if(femaleCardColor == inactiveCardColor){
//        femaleCardColor = activeCardColor;
//        maleCardColor = inactiveCardColor;
//      }
//      else{
//        femaleCardColor = inactiveCardColor;
//      }
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.MALE;
                      });
                    },
                    color: selectedGender == GenderType.MALE ? activeCardColor : inactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = GenderType.FEMALE;
                      });
                      print('Female button clicked');
                    },
                    child: ReusableCard(
                      color: selectedGender == GenderType.FEMALE ? activeCardColor : inactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: activeCardColor,
              cardChild: Column(
                children: <Widget>[Text('HEIGHT', style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)))],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(
              top: 10.0,
            ),
          ),
        ],
      ),
    );
  }
}

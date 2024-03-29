import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/calc' : (context) => ResultPage()
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        sliderTheme:
          SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.white,
              overlayColor: Colors.white30,//Color(0x29EB1555),
              thumbColor: Colors.white,//Color(0xFFEB1555),
              thumbShape: RoundSliderThumbShape(
                  enabledThumbRadius: 15.0
              ),
              overlayShape: RoundSliderOverlayShape(
                  overlayRadius: 30.0
              )
          )
        ),
      home: InputPage(),
    );
  }
}

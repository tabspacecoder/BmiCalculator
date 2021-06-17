import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmi,@required this.bmiText, @required this.interpretation});

  final String bmi;
  final String bmiText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR',)),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomCenter,
              child: Center(
                child: Text(
                  'YOUR RESULTS',
                  style: KTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      bmiText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmi,
                      style: kBMIStyle,
                    ),
                    Text(
                      interpretation.toUpperCase(),
                      style: kResultBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),

                  ],
                )),
            flex: 5,
          ),
          BottomButton(ButtonText: 'RE-CALCULATE',onTap:(){ Navigator.pop(context);},  )
        ],
      ),
    );
  }
}

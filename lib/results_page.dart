import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:bmi_calculator/ReusableCard.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.interpretation,
        required this.bmiResult,
        required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Your Result',
                  style: kTextStyle,
                )),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kactivecardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kresultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kbmiTextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kbodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              color: kbottomcontainercolor,
              width: double.infinity,
              height: 60,
              child: Center(child: Text('RECALCULATE')),
            ),
          ),
        ],
      ),
    );
  }
}

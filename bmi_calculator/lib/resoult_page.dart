import 'package:bmi_calculator/BottomButton.dart';
import 'package:bmi_calculator/ReusableCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
class ResultPage extends StatelessWidget {
  const ResultPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Center(child: Text('BMI Calculator'))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Center(
              child: Text('Your Resoult',
              style: kTitleTextStyle,
              ),
            ),
          )),
          Expanded(
            flex: 5,
              child: ReusableCard(color:  kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText,style: kresultTextStyle),
                  Text(bmiResult, style: kBMITextStyle,),
                  Text(interpretation, style: kBodyTextStyle, textAlign: TextAlign.center),
                ],
              ),
              )
          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }
          , text: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}

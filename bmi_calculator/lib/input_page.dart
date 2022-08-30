import 'package:bmi_calculator/BottomButton.dart';
import 'package:bmi_calculator/resoult_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculator_BMI.dart';

import 'GenderCard.dart';
import 'ReusableCard.dart';
import 'RoundIconButton.dart';
import 'constants.dart';


enum Gender{male, female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color(0xFF0A0E21),
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                  child: ReusableCard(
                    onPress: (){setState(() {
                      selectedGender = Gender.male;
                    });},
                    color: selectedGender == Gender.male ? kActiveCardColor: kInactiveCardColor,
                    cardChild: GenderCard(icon: FontAwesomeIcons.mars,text: 'MALE'),
                  )
              ),
              Expanded(
                  child: ReusableCard(
                    onPress: (){setState(() {
                      selectedGender = Gender.female;
                    });},
                    color: selectedGender == Gender.female ? kActiveCardColor: kInactiveCardColor,
                    cardChild: GenderCard(icon: FontAwesomeIcons.venus,text: 'FEMALE'),
                  )
              ),
            ],
          )),
          Expanded(
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  crossAxisAlignment:  CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text('HEIGHT',
                        style: kLabelTextStyle,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                            height.toString(),
                          style: kBigLabelTextStyle
                        ),
                        SizedBox(width: 2.0,),
                        Text('cm',
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x1fEB1555),
                        thumbColor: Color(0xFFEB1555),
                        thumbShape:
                        RoundSliderThumbShape(enabledThumbRadius:15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 240.0,
                          onChanged: (double newValue){
                            setState(() {
                              height = newValue.round();
                            });
                          },
                      ),
                    ),
                  ],
                ),
              )
          ),
          Expanded(child: Row(
            children: [
              Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT', style:  kLabelTextStyle,),
                        Text(weight.toString(), style: kBigLabelTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  if(weight > 0)
                                    weight--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  )
              ),
              Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE', style:  kLabelTextStyle,),
                        Text(age.toString(), style: kBigLabelTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  if(weight > 0)
                                    age--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  )
              ),
            ],
          )),
          BottomButton(
            onTap: (){
              var calc = CalculatorBMI(height: height, weight: weight);

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => (ResultPage(
                bmiResult: calc.calculateBMI(),
                resultText: calc.gerResult(),
                interpretation: calc.gerInterpretation(),
              ))),
            );},
            text: 'CALCULATE',),
        ],
      ),
    );
  }
}

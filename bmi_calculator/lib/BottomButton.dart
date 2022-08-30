import 'package:bmi_calculator/resoult_page.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({@required this.onTap, @required this.text}) ;
  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(text,
            style: TextStyle(fontSize: 40)
        )),
        width: double.infinity,
        color: Color(0xFFEB1555),
        height: kBbottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}


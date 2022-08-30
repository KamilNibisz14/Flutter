import 'package:flutter/material.dart';

import '../constants.dart';

class ButtonCard extends StatelessWidget {

  ButtonCard({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 50),
      width: 250,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: kButtonColor,
      ),
      child: Center(child: Text(text, style: TextStyle(color: kTextcolor, fontSize: 30),)),
    );
  }
}

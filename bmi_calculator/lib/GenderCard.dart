
import 'package:flutter/material.dart';

import 'constants.dart';

class GenderCard extends StatelessWidget {
  GenderCard({@required this.icon, @required this.text});

  final text;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 75.0,
        ),
        SizedBox(height: 15.0),
        Text(
          text,
          style: kLabelTextStyle
        )
      ],
    );
  }
}
import 'package:bmi_calculator/resoult_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color(0xFF0A0E21)),
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}

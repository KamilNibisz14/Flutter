import 'package:flutter/cupertino.dart';

class SmallText extends Text {
  SmallText(String text, {Key? key, Color? color = const Color(0xFFccc7c5),
    double size = 15,
    double height = 1.2
  }) : super(
    text,
    key: key,
    style: TextStyle(
        fontSize: size,
        color: color,
        height: height
    ),
  );
}

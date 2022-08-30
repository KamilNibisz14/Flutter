import 'package:flutter/cupertino.dart';

class BigText extends Text {
  BigText(String text, {Key? key, Color? color = const Color(0xffccc7c5),
    double size = 20,
    double height = 1.2
  }) : super(
    text,
    key: key,
    style: TextStyle(
        fontWeight:FontWeight.w600,
        fontSize: size,
        color: color,
        height: height
    ),
  );
}

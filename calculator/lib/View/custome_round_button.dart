import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {
  RoundedButton({required this.size , required this.color,required this.tapColor, required this.text, required this.onPress, required this.textcolor, required this.fontSize});
  double size;
  Color color;
  Color tapColor;
  String text;
  VoidCallback onPress;
  Color textcolor;
  double fontSize;
  double? buttonWitdh;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text(text,
          style: TextStyle(
              color: textcolor,
              fontSize: fontSize,
          )),
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(size, size),
          shape: const CircleBorder(),
          primary: color,
          onPrimary: tapColor,
        ),
      ),
    );
  }
}

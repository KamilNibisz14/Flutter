import 'package:flutter/material.dart';
class CustomeCard extends StatelessWidget {
  CustomeCard({required this.content, required this.onTap, this.bottomBorder, this.rightBorder});
  bool? bottomBorder;
  bool? rightBorder;
  VoidCallback onTap;
  String content;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(
          content,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20
          ),
        )),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(width: 1.0, color: rightBorder!= null ? Color(0x36363624):Colors.transparent),
            bottom: BorderSide(width: 1.0, color: bottomBorder!= null ? Color(0x36363624):Colors.transparent),
          ),
        ),
      ),
    );
  }
}

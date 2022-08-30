import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({required this.text, required this.iconData, required this.color,required this.isForward});
  final String text;
  final IconData iconData;
  final bool isForward;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 10.0),
      child: Row(
        children: [
          isForward ? Text(text, style: TextStyle(fontSize: 18, color: Colors.white),) :Icon(iconData,size: 18,color: Colors.white),
          SizedBox(width: 5,),
          isForward ? Icon(iconData,size: 18, color: Colors.white,) : Text(text, style: TextStyle(fontSize: 18, color: Colors.white),)
        ],
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(13.0),
      ),
    );
  }
}

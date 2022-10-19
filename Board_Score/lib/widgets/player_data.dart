import 'package:flutter/material.dart';

class PlayerData extends StatelessWidget {
  PlayerData({Key? key, required this.name, required this.points, this.isBorder}) : super(key: key);

  String name;
  int points;
  bool? isBorder;


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double playerNameFontSize = screenWidth/24;
    double playerDataContainerWidth = screenWidth*0.9;
    Color buttonColor = Theme.of(context).bottomAppBarColor;
    return Container(
      width: playerDataContainerWidth,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Text(name,
                style: TextStyle(
                  fontSize: playerNameFontSize
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  points.toString(),
                  style: TextStyle(
                  fontSize: playerNameFontSize),),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: buttonColor,
                    ),
                    child: Icon(Icons.add),
                  ),
                )
              ],
            ),)
        ],
      ),

      decoration: BoxDecoration(
        border: Border(
          bottom: isBorder == false?BorderSide(color: Colors.transparent,width: 0):BorderSide(color: Color(0xFFfcfcfc),width: 1)
        )
      ),
    );
  }
}

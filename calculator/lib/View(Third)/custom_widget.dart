import 'package:flutter/material.dart';

class CudtomWidget extends StatelessWidget {
  CudtomWidget({
    required this.content,
    required this.holdAction,
    required this.secondContent,
    required this.tapAction,
    required this.contentFontSize,
    required this.secondContentFontSize,
    required this.contentFontColor,
    required this.secondContentFontColor,
    this.isBottomBorder,
    this.isLeftBorder,
    this.isRightBorder,
    this.isTopBorder,
  });
  String content;
  String secondContent;
  bool? isRightBorder;
  bool? isLeftBorder;
  bool? isTopBorder;
  bool? isBottomBorder;
  VoidCallback tapAction;
  VoidCallback holdAction;
  double contentFontSize;
  double secondContentFontSize;
  Color contentFontColor;
  Color secondContentFontColor;

@override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapAction,
      onLongPress: holdAction,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(
            right: BorderSide(color: Colors.black, width: isRightBorder == false ? 0.0 : 1.0),
            left: BorderSide(color: Colors.black, width: isLeftBorder == false ? 0.0 : 1.0),
            top: BorderSide(color: Colors.black, width: isTopBorder == false ? 0.0 : 1.0),
            bottom: BorderSide(color: Colors.black, width: isBottomBorder == false ? 0.0 : 1.0),
          ),
        ),
        child: Stack(
          children: [
            Center(child: Text(
              content,
              style: TextStyle(fontSize: contentFontSize),
            )),
            Positioned(
                top: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(secondContent,
                    style: TextStyle(
                      fontSize: secondContentFontSize
                    ),)
            ),
                ))
          ],
        ),
      ),
    );
  }
}

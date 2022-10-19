import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/game_list_bloc.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> with SingleTickerProviderStateMixin{
  late Animation<double> animation;
  late AnimationController animationController;
  bool isForward = false;

  @override
  void initState() {

    animationController = AnimationController(
      duration: Duration(milliseconds: 1000), vsync: this);

    final curvedAnimation= CurvedAnimation(parent: animationController, curve: Curves.easeOutExpo);

    animation = Tween<double>(begin: 0, end: 180).animate(curvedAnimation)..addListener(() { setState(() {

    });});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double containerHeight = screenHeight/ 20;
    double containerWidth = screenHeight/ 2;
    Color textFieldColor = Theme.of(context).bottomAppBarColor;
    double IconContainer = containerHeight;
    Timer? _denounc;
    String searchText = "";
    return Container(
      margin: EdgeInsets.only(top: containerHeight*0.75),
      height: containerHeight,
      width: containerWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: animation.value,
            decoration: BoxDecoration(
              color: textFieldColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              )
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: TextField(
                onChanged: (value){
                  if(_denounc?.isActive ?? false)_denounc?.cancel();
                  _denounc = Timer(
                      const Duration(milliseconds: 500),(){
                    if(searchText != value || value == ''){
                      context.read<GameListBloc>().add(SearchEvent(text: value));
                    }
                    searchText = value;
                  });
                  },
                cursorColor: Colors.white12,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none
                ),
              ),
            ),
          ),
          Container(
            width: IconContainer,
            height: IconContainer,
            decoration: BoxDecoration(
              color: textFieldColor,
              borderRadius:animation.value > 1?  BorderRadius.only(
                topLeft: Radius.circular(0),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(50),
                topRight: Radius.circular(50),
              ): BorderRadius.circular(50)
            ),
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: (){
                if(!isForward){
                  animationController.forward();
                  isForward = true;
                }else{
                  animationController.reverse();
                  isForward = false;
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

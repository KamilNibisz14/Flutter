import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:solar_system/Text/bigText.dart';
import 'package:solar_system/Text/smallText.dart';
import 'package:solar_system/diamensions.dart';

class Planet extends StatelessWidget {
  String image;
  String name;
  String kind;
  String Distance;
  String Equatorial;
  String Circulation;
  int size;


  Planet({Key? key,
  required this.image,
  required this.name,
  required this.kind,
  required this.Distance,
  required this.Equatorial,
  required this.Circulation,
     this.size = 45,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Diamensions.width10 * 100,
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top:Diamensions.width10 * 25,
              child:Container(
                  width: Diamensions.width10 * 70,
                  padding: EdgeInsets.only(top: Diamensions.width10 * 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Diamensions.height10*3),
                    color: Color(0xFF32356C),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.black,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                  ),

                  child: Column(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: Diamensions.width10 *8,
                          color: Colors.white70,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Diamensions.width10),
                        child: Text(
                          kind,
                          style: TextStyle(
                            fontSize: Diamensions.width10 *3.5,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: Diamensions.width10 * 4),
                          child: BigText('Distance from sun')
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: Diamensions.width10),
                          child: SmallText(Distance)
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: Diamensions.width10 * 4),
                          child: BigText('Equatorial diameter')
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: Diamensions.width10),
                          child: SmallText(Equatorial)
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: Diamensions.width10 * 4),
                          child: BigText('Circulation time')
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: Diamensions.width10, bottom: Diamensions.width10 *4),
                          child: SmallText(Circulation)
                      ),
                    ],
                  )
              )
          ),
          Positioned(
            top: 0,
            child: Container(
              child: Image.asset(image,),
                height: Diamensions.width10 * size,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:solar_system/Text/bigText.dart';
import 'package:solar_system/Text/smallText.dart';
import 'package:solar_system/diamensions.dart';

class Planet_info extends StatelessWidget {
  const Planet_info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xC10F0C31),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: Diamensions.height10 * 17,
                  child: Container(
                    width: Diamensions.width10 * 100,
                    alignment: Alignment.center,
                    child: Container(
                      width: Diamensions.width10 * 95,
                      height: Diamensions.height10 * 77,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Diamensions.height10*3),
                        color: Color(0xFF32356C),
                      ),
                    ),
                  )
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Row(
                  children: [
                    Container(
                      child: Image.asset('images/sun.png'),
                      height: Diamensions.width10 * 45,
                    ),
                    Container(
                      width: Diamensions.width10*50,
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'Sun',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: Diamensions.height10 * 5,
                                letterSpacing: 4,
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                'star',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: Diamensions.height10 * 2,
                                  letterSpacing: 4,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}


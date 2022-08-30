import 'package:flutter/material.dart';
import 'package:solar_system/diamensions.dart';
import 'package:get/get.dart';
import 'package:solar_system/planets/planet.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color((0xC10F0C31),),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: Diamensions.height10 *6, bottom: Diamensions.height10 * 12),
              child: Center(
                child: Text(
                  'Solar System',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: Diamensions.height10 * 5,
                    letterSpacing: 4,
                  ),
                ),
              ),
            ),
            Container(
              height: Diamensions.height10 * 65,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Planet(image: 'images/sun.png', name: 'Sun', kind: 'Star', Distance: '---', Equatorial: '1 392 000 km', Circulation: '---', size: 50,),
                  Planet(image: 'images/mercury.png', name: 'Mercury', kind: 'Planet', Distance: '57 909 170 km', Equatorial: '4 879 km', Circulation: '87,969 days'),
                  Planet(image: 'images/venus.png', name: 'Venus', kind: 'Planet', Distance: '108 208 926 km', Equatorial: '12 104 km', Circulation: '224,701 days'),
                  Planet(image: 'images/earth.png', name: 'Earth', kind: 'Planet', Distance: '149 597 887 km', Equatorial: '12 756 km', Circulation: '365,256 days'),
                  Planet(image: 'images/mars.png', name: 'Mars', kind: 'Planet', Distance: '227 936 637 km', Equatorial: '6 805 km', Circulation: '686,960 days'),
                  Planet(image: 'images/jupiter.png', name: 'Jupiter', kind: 'Planet', Distance: '778 412 027 km', Equatorial: '142 984 km', Circulation: '4 333,287 days'),
                  Planet(image: 'images/saturn.png', name: 'Saturn', kind: 'Planet', Distance: '1 426 725 413 km', Equatorial: '120 536 km', Circulation: '10 756,200 days', size: 60,),
                  Planet(image: 'images/uran.png', name: 'Uranus', kind: 'Planet', Distance: '2 870 972 220 km', Equatorial: '51 118 km', Circulation: '30 707,490 days'),
                  Planet(image: 'images/neptun.png', name: 'Neptun', kind: 'Planet', Distance: '4 498 252 900 km', Equatorial: '49 528 km', Circulation: '60 223,353 days',),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

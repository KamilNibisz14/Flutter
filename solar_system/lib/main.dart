import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solar_system/diamensions.dart';
import 'package:get/get.dart';
import 'package:solar_system/planets/mainPage.dart';
import 'package:solar_system/planets/planet_info.dart';


void main() {
  runApp( SolarSystem());
}

class SolarSystem extends StatelessWidget {
  const SolarSystem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SolarSystem',
      home: Planet_info()
    );
  }
}

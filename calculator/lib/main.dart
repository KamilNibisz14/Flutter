import 'package:flutter/material.dart';
import 'Providers/Calculation.dart';
import 'View(Second)/main_view_calculator.dart';
import 'View(Third)/main_view_calculator.dart';
import 'View/main_view_calculator.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Calculate()),
      ],
      child: const Main(),
    ),
  );
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: CalculatorView3(),
    );
  }
}

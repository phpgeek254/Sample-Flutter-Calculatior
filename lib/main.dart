import 'package:calculator_app/MainCalculator.dart';
import 'package:flutter/material.dart';

void main() => runApp(CalculatorHomePage());


class CalculatorHomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator App",
      debugShowMaterialGrid: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MainCalculator(),
    );
  }
}
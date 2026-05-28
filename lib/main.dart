import 'package:flutter/material.dart';
import 'package:flutter_lab3_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    home: (Scaffold(
        body: GradientContainer(
            color1: Colors.white,
            color2: Colors.blue,
            color3: Colors.red,
        ),
      )),
    ),
  );
}
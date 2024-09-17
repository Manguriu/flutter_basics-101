import 'package:flutter/material.dart';
import 'package:my_first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 77, 187, 26),
            Color.fromARGB(255, 126, 150, 144)),
      ),
    ),
  );
}

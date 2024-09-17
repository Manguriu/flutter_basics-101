import 'package:flutter/material.dart';
import 'package:my_first_app/style_text.dart';

var colorAlignmentStart = Alignment.topLeft;
var colorAlignmentEnd = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color.fromARGB(255, 135, 240, 142),
            Color.fromARGB(255, 15, 134, 25),
          ],
          begin: colorAlignmentStart,
          end: colorAlignmentStart,
        ),
      ),
      child: const Center(child: StyledText()),
    );
  }
}

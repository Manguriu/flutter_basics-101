import 'package:flutter/material.dart';
import 'package:my_first_app/dice_roller.dart';
// import 'package:my_first_app/style_text.dart';

const colorAlignmentStart = Alignment.topLeft;
const colorAlignmentEnd = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: colorAlignmentStart,
          end: colorAlignmentStart,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration:  BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: colorAlignmentStart,
//           end: colorAlignmentStart,
//         ),
//       ),
//       child: const Center(child: StyledText('hello new mf')),
//     );
//   }
// }

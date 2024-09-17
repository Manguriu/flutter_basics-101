import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(context) {
    return const Text(
      '(hello new mf)',
      style: TextStyle(color: Color.fromARGB(255, 206, 12, 12), fontSize: 28),
    );
  }
}

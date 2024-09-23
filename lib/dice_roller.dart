import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = 'assets/image/dice-2.png';

  var currrentDiceRoll = 2;

  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1; //1 <>6
    setState(() {
      // currrentDiceRoll = Random().nextInt(6) + 1; //1 <>6
      currrentDiceRoll = diceRoll;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/image/dice-$currrentDiceRoll.png', width: 200),
        // const SizedBox(height: 20), //another method of padding
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.lightGreen,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll The dice'))
      ],
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentNumber = 1;

  void rollDice() {
    
    setState(() {
      currentNumber = Random().nextInt(6) + 1;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/dice-$currentNumber.png', width: 200),
          const SizedBox(height: 20),
          TextButton(
            onPressed: rollDice,
            child: const Text('Roll the dice'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 28),
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
                bottom: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

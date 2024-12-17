import 'package:flutter/material.dart';
import 'dart:math';

final randmizer = Random();

class RollDiceView extends StatefulWidget {
  const RollDiceView({super.key});

  @override
  State<RollDiceView> createState() => _RollDiceViewState();
}

class _RollDiceViewState extends State<RollDiceView> {
  var currentDiceRoll = 3;

  void rollDice() {
    setState(() {
      currentDiceRoll = randmizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text(
                'Roll Dice',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

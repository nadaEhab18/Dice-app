import 'package:dice_app/views/roll_dice_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dice App',
      debugShowCheckedModeBanner: false,
      home: RollDiceView(),
    );
  }
}

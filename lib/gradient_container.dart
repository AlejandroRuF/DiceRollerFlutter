import 'package:first_app/dice_roller.dart';
import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

final Alignment startAligment = Alignment.topLeft;
final Alignment endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer({
    super.key,
    this.colors = const [
      Color.fromARGB(255, 226, 232, 173),
      Color.fromARGB(255, 217, 226, 93),
    ],
  });

  const GradientContainer.purple({super.key})
    : colors = const [
        Color.fromARGB(255, 103, 37, 173),
        Color.fromARGB(255, 144, 109, 154),
      ];

  final List<Color> colors;

  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: DiceRoller(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_lab3_app/styled_text.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {

  var activeDiceImage = 'flutter_lab3_app/assets/images/dice-1.png';

  final Color color1;
  final Color color2;
  final Color color3;

  GradientContainer({
    super.key,
    required this.color1,
    required this.color2,
    required this.color3,
  });

  void rollDice() {
    activeDiceImage = 'flutter_lab3_app/assets/images/dice-4.png';
    print('Изменили картинку');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1, 
            color2, 
            color3
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
            width: 300,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                foregroundColor: Colors.lime,
                textStyle: const TextStyle(
                  fontSize: 30,
                ),
              ),
              child: Text("Roll Dice"),
            ),
          ],
        ),
      ),
    );
  }
}
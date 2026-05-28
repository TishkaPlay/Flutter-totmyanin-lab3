import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'flutter_lab3_app/assets/images/dice-1.png';

  void rollDice() {
    setState(() {
       activeDiceImage = 'flutter_lab3_app/assets/images/dice-4.png';
    });
   
    print('Изменили картинку');
  }

  var currentDiceRoll = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 300),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.lime,
            textStyle: const TextStyle(fontSize: 30),
          ),
          child: Text("Roll Dice"),
        ),
      ],
    );
  }
}

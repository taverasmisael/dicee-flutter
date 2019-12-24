import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void rollDices() {
    setState(() {
      leftDiceNumber = getRandom(leftDiceNumber);
      rightDiceNumber = getRandom(rightDiceNumber);
    });
  }

  int getRandom(int n) {
    int random = n;
    while (random == n) {
      random = Random().nextInt(6) + 1;
    }

    return random;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                rollDices();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                rollDices();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

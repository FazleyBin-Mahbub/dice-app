import 'package:flutter/material.dart';
import 'dart:math';

class MyDice extends StatefulWidget {
  @override
  _MyDiceState createState() => _MyDiceState();
}

class _MyDiceState extends State<MyDice> {
  int diceNum = 1;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice App'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    diceNum = Random().nextInt(6) + 1;
                  },
                  
                  );
                },
                child: Image.asset('assets/images/dice$diceNum.png',width: 200,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceValue = 1;
  int rightDiceValue = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: FlatButton(onPressed: () {
            setState(() {
              leftDiceValue = Random().nextInt(6) + 1;
            });

          },
              child: Image.asset('images/dice$leftDiceValue.png')),),
          Expanded(child: FlatButton(onPressed: () {
            setState(() {
              rightDiceValue = Random().nextInt(6) + 1;
            });
          },
              child: Image.asset('images/dice$rightDiceValue.png')),),
        ],
      ),
    );
  }
}
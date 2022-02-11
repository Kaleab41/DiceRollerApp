import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.redAccent,
          appBar: AppBar(
            title: Text('Dice App'),
            backgroundColor: Colors.redAccent,
          ),
          body: Dice(),
        ),
      ),
    );

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int diceNumber = 1;
  int diceNumberTwo = 1;
  void Generator() {
    diceNumber = Random().nextInt(6) + 1;
    diceNumberTwo = Random().nextInt(6) + 1;
  }
  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(
                  () {
                    Generator();
                  },
                );
              },
              child: Image(
                image: AssetImage('images/dice$diceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  Generator();
                });
              },
              child: Image(
                image: AssetImage('images/dice$diceNumberTwo.png'),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

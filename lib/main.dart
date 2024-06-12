import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 2,
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = 2;
                });

                print("ddd");
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            //flex: 1,
            child: TextButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              child: Image.asset('images/dice4.png'),
            ),
          ),
        ],
      ),
    );
  }
}

//class DicePage extends StatelessWidget {}

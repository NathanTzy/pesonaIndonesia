import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  int num = 0;
  double fontSize = 20;

  void countMe() {
    setState(() {
      num++;
      if (num == 50) {
        fontSize = 50;
      } else {
        fontSize = 20;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counting app'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Start counting!'),
              ElevatedButton(
                onPressed: countMe,
                child: Text(
                  'Press me!',
                ),
              ),
              Text(
                'You have pressed me for $num times',
                style: TextStyle(
                  fontSize: fontSize, // Use the dynamic fontSize variable
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    num = 0;
                  });
                },
                child: Text(
                  'Reset!',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

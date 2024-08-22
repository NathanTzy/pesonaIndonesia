import 'package:flutter/material.dart';

class App2 extends StatelessWidget {
  const App2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Icon(Icons.abc),
          ),
        ),
      ),
    );
  }
}

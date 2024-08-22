import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Button widget',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.amber,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Satu'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Satu'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text('Satu'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.time_to_leave),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

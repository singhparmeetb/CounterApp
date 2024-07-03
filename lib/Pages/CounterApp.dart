import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;
  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "You have pressed the button ",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            count.toString(),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            " times",
            style: TextStyle(fontSize: 20),
          ),
        ]),
        FloatingActionButton(
          onPressed: increment,
          child: const Icon(Icons.add),
        )
      ],
    )));
  }
}

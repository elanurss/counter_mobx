// ignore_for_file: deprecated_member_use, file_names

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:statemanagement_mobx/store/counter.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter And Mobx"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Counter",
              style: TextStyle(fontSize: 40),
            ),
            Observer(
              builder: (_) => Text(
                "${counter.count}",
                style: const TextStyle(fontSize: 53),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton.icon(
                  onPressed: () {
                    counter.increment();
                  },
                  icon: const Icon(Icons.add),
                  label: const Text(
                    "Add",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                FlatButton.icon(
                  onPressed: () {
                    counter.decrement();
                  },
                  icon: const Icon(Icons.remove),
                  label: const Text(
                    "Minus",
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

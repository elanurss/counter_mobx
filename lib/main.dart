import 'package:flutter/material.dart';
import 'package:statemanagement_mobx/pages/counterPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İncrement Button',
      theme: ThemeData.dark(),
      home: const CounterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

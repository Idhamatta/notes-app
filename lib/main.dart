import 'package:flutter/material.dart';

void main(List<String> args) {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text('Rodrik Notes'),
          centerTitle: true,
        ),
        body: Container(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/pages/home_page.dart';
import 'package:notes_app/util/todo_tile.dart';

void main(List<String> args) async {
  // init the hive
  await Hive.initFlutter();

  // open a box
  var box = await Hive.openBox('MyBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.lightGreen),
    );
  }
}

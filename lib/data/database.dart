import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];
  // reference our box
  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ['Coding', false],
      ['ate', false]
    ];
  }

  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}

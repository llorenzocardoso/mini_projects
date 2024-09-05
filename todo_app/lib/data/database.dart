import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  
  List toDoList = [];

  final _mybox = Hive.box('mybox');


// run this if this is the first time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Buy milk", false],
      ["Buy eggs", false],
      ["Buy bread", false],
    ];
  }

  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  void updateDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }

}
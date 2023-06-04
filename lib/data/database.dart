import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{

  List toDoList =[];

  final _myBox = Hive.box('mybox');

  void createInitialData(){
    toDoList =[
      ["Work 1", false],
      ["Work 2", false],
    ];
  }

  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }
}
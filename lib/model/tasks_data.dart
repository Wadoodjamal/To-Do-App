import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:to_do_app/model/tasks.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier {
  List<Tasks> _taskList = [
    Tasks(isChecked: false, title: 'Buy Some Milk.'),
    Tasks(isChecked: false, title: 'Buy Some Eggs.'),
  ];

  UnmodifiableListView<Tasks> get taskList {
    return UnmodifiableListView(_taskList);
  }

  //Function to get length of the list
  int getLength() => taskList.length;

  //Method for adding new task to the list
  void addNewTask(String newTaskTitle) {
    _taskList.add(Tasks(title: newTaskTitle, isChecked: false));
    notifyListeners();
  }

  void updateTask(Tasks task) {
    task.toggleTask();
    notifyListeners();
  }

  void removeTask(Tasks task) {
    _taskList.remove(task);
    notifyListeners();
  }
}

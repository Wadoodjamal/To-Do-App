import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/task_tile.dart';
import 'package:to_do_app/model/tasks.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Tasks> taskList = [
    Tasks(isChecked: false, title: 'Buy Some Milk.'),
    Tasks(isChecked: false, title: 'Buy Some Eggs.'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTileState(
          title: taskList[index].title,
          isChecked: taskList[index].isChecked,
          toggleCheckBox: (checkBoxState) {
            setState(() {
              taskList[index].isChecked = checkBoxState;
            });
          },
        );
      },
      itemCount: taskList.length,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:to_do_app/model/tasks_data.dart';
import 'package:to_do_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.taskList[index];
            return TaskTileState(
              title: task.title,
              isChecked: task.isChecked,
              toggleCheckBox: (checkBoxState) {
                taskData.updateTask(task);
              },
              toggleLongPress: () {
                taskData.removeTask(task);
              },
            );
          },
          itemCount: taskData.getLength(),
        );
      },
    );
  }
}

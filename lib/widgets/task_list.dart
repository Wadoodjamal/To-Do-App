import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      dragStartBehavior: DragStartBehavior.down,
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class TaskTileState extends StatelessWidget {
  final bool? isChecked;
  final Function(bool?)? toggleCheckBox;
  final Function()? toggleLongPress;
  final String? title;

  TaskTileState({
    this.isChecked,
    this.toggleCheckBox,
    this.title,
    this.toggleLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: toggleLongPress,
      leading: Text(
        title!,
        style: TextStyle(
          fontSize: 18.0,
          decoration: isChecked == true ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheckBox,
      ),
    );
  }
}

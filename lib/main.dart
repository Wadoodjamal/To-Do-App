import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/model/tasks_data.dart';
import 'package:to_do_app/screens/task_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: ToDoTaskScreen(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}

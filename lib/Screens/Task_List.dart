import 'package:flutter/material.dart';
import 'package:todoApp/Models/Task_Model.dart';

import 'Widgets/To_Do_Item_Widget.dart';

class TaskList extends StatelessWidget {
  final List<Task> tasks;

  TaskList({@required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getChildrenTasks(),
    );
  }

  List<Widget> getChildrenTasks() {
    return tasks.map((todo) => TodoItem(task: todo)).toList();
  }
}

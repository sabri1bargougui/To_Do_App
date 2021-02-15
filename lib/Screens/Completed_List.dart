import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoApp/Models/Todo_Model.dart';
import 'package:todoApp/Screens/Task_List.dart';

class CompletedTasksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TodosModel>(
        builder: (context, todos, child) => TaskList(
          tasks: todos.completedTasks,
        ),
      ),
    );
  }
}

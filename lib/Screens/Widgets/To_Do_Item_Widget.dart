import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:todoApp/Models/Task_Model.dart';
import 'package:todoApp/Models/Todo_Model.dart';
import 'package:todoApp/Screens/Widgets/Edit_Todo_Widget.dart';

class TodoItem extends StatelessWidget {
  final Task task;

  const TodoItem({this.task});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slidable(
          actionPane: SlidableDrawerActionPane(),
          actions: [
            IconSlideAction(
              color: Colors.green,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditTodo()),
                );
              },
              caption: 'Edit',
              icon: Icons.edit,
            )
          ],
          secondaryActions: [
            IconSlideAction(
              color: Colors.red,
              caption: 'Delete',
              onTap: () {
                Provider.of<TodosModel>(context, listen: false)
                    .deleteTodo(task);
              },
              icon: Icons.delete,
            )
          ],
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      activeColor: Theme.of(context).primaryColor,
                      checkColor: Colors.white,
                      value: task.completed,
                      onChanged: (bool checked) {
                        Provider.of<TodosModel>(context, listen: false)
                            .toggleTodo(task);
                      },
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            task.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                              fontSize: 22,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Text(
                              task.description,
                              style: TextStyle(fontSize: 20, height: 1.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 1,
          color: Colors.black,
        ),
      ],
    );
  }
}

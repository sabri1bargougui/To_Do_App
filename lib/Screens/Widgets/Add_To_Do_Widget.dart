import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoApp/Models/Task_Model.dart';
import 'package:todoApp/Models/Todo_Model.dart';

class AddTodoDialogWidget extends StatefulWidget {
  @override
  _AddTodoDialogWidgetState createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {
  final _formKey = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _description = TextEditingController();
  bool completedStatus = false;

  @override
  void dispose() {
    _title.dispose();
    _description.dispose();
    super.dispose();
  }

  void onAdd() {
    final String title = _title.text;
    final String description = _description.text;
    final bool completed = completedStatus;
    if (title.isNotEmpty && description.isNotEmpty) {
      final Task todo = Task(
        title: title,
        description: description,
        completed: completed,
      );
      Provider.of<TodosModel>(context, listen: false).addTodo(todo);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
        content: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add Todo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _title,
                decoration: InputDecoration(
                  labelText: 'Title',
                  hintText: 'enter title please !',
                ),
              ),
              TextFormField(
                controller: _description,
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: 'Description',
                  hintText: 'enter description  please !',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200, top: 20),
                child: FloatingActionButton(
                  onPressed: onAdd,
                  child: Text('save'),
                ),
              ),
            ],
          ),
        ),
      );
}

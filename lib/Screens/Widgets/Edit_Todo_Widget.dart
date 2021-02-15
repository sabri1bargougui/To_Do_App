import 'package:flutter/material.dart';

class EditTodo extends StatefulWidget {
  EditTodo({Key key}) : super(key: key);

  @override
  _EditTodoState createState() => _EditTodoState();
}

class _EditTodoState extends State<EditTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      appBar: AppBar(
        title: Text('Edit TODO'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: [
              SizedBox(height: 100),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Title',
                  labelText: 'Title',
                ),
              ),
              Expanded(
                child: TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: 'Description',
                    labelText: 'Enter Description please',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200, top: 10),
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Text('save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

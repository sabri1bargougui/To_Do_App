import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoApp/Screens/Home_Screen.dart';

import 'Models/Todo_Model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodosModel(),
      child: MaterialApp(
        title: 'Todos',
        home: HomeScreen(),
      ),
    );
  }
}

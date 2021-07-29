import 'package:flutter/material.dart';
import 'package:flutter_supabase/providers/index.dart';
import 'package:provider/provider.dart';

class AddTodosScreen extends StatefulWidget {
  const AddTodosScreen({Key? key}) : super(key: key);

  @override
  _AddTodosScreenState createState() => _AddTodosScreenState();
}

class _AddTodosScreenState extends State<AddTodosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Todo"),
      ),
      body: Center(
        child: OutlinedButton(
          child: Text('AddTodos'),
          onPressed: () {
            Provider.of<IndexProvider>(context, listen: false).addTodo();
          },
        ),
      ),
    );
  }
}

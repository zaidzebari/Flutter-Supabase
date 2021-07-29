import 'package:flutter/material.dart';
import 'package:flutter_supabase/providers/index.dart';
import 'package:provider/provider.dart';

class UpdateTodoScreen extends StatefulWidget {
  const UpdateTodoScreen({Key? key}) : super(key: key);

  @override
  _UpdateTodoScreenState createState() => _UpdateTodoScreenState();
}

class _UpdateTodoScreenState extends State<UpdateTodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UpdateTodo"),
      ),
      body: Center(
        child: OutlinedButton(
          child: Text('UpdateTodo'),
          onPressed: () {
            Provider.of<IndexProvider>(context, listen: false).updateTodo();
          },
        ),
      ),
    );
  }
}

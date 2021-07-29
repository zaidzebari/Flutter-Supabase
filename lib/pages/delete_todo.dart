import 'package:flutter/material.dart';
import 'package:flutter_supabase/providers/index.dart';
import 'package:provider/provider.dart';

class DeleteTodoScreen extends StatefulWidget {
  const DeleteTodoScreen({Key? key}) : super(key: key);

  @override
  _DeleteTodoScreenState createState() => _DeleteTodoScreenState();
}

class _DeleteTodoScreenState extends State<DeleteTodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DeleteTodo"),
      ),
      body: Center(
        child: OutlinedButton(
          child: Text('DeleteTodo'),
          onPressed: () {
            Provider.of<IndexProvider>(context, listen: false).deleteTodo();
          },
        ),
      ),
    );
  }
}

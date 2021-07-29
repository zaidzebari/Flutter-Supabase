import 'package:flutter/material.dart';
import 'package:flutter_supabase/providers/index.dart';
import 'package:provider/provider.dart';

class ShowTodosScreen extends StatefulWidget {
  const ShowTodosScreen({Key? key}) : super(key: key);

  @override
  _ShowTodosScreenState createState() => _ShowTodosScreenState();
}

class _ShowTodosScreenState extends State<ShowTodosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("show tod ap"),
      ),
      body: Center(
        child: OutlinedButton(
          child: Text('ShowTodos'),
          onPressed: () {
            Provider.of<IndexProvider>(context, listen: false).getTodos();
          },
        ),
      ),
    );
  }
}

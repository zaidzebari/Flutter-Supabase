import 'package:flutter/material.dart';
import 'package:flutter_supabase/auth/login.dart';
import 'package:flutter_supabase/auth/register.dart';
import 'package:flutter_supabase/pages/add_todos.dart';
import 'package:flutter_supabase/pages/delete_todo.dart';
import 'package:flutter_supabase/pages/show_todos.dart';
import 'package:flutter_supabase/pages/udpate_todo.dart';
import 'package:flutter_supabase/providers/index.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => IndexProvider())],
      child: MaterialApp(
        title: 'Flutter Supabase',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String image = "https://url?token=token";
  //  'https://media.istockphoto.com/photos/programming-code-abstract-technology-background-of-software-developer-picture-id1224500457?b=1&k=6&m=1224500457&s=170667a&w=0&h=vqI3oI36-whsMrK1Ynw_yR9Ndy_C4zA5qYSI0vmxbus=';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Center(
            child: Text("go a way zaid!"),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ShowTodosScreen()));
            },
            child: Text("goto show page"),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AddTodosScreen()));
            },
            child: Text("goto add page"),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => UpdateTodoScreen()));
            },
            child: Text("goto udpate page"),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DeleteTodoScreen()));
            },
            child: Text("goto delete page"),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Text("login page"),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RegisterScreen()));
            },
            child: Text("goto register page"),
          ),
          OutlinedButton(
            onPressed: () {
              Provider.of<IndexProvider>(context, listen: false).logout();
            },
            child: Text("logout"),
          ),
          OutlinedButton(
            onPressed: () {
              Provider.of<IndexProvider>(context, listen: false).currentUser();
            },
            child: Text("current user"),
          ),
          OutlinedButton(
            onPressed: () async {
              await Provider.of<IndexProvider>(context, listen: false)
                  .uploadImage();
              print('finished');
            },
            child: Text("upload image to supabase"),
          ),
          Image.network(
            '$image',
            height: 200,
          )
        ],
      ),
    );
  }
}

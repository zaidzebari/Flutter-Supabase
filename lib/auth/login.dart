import 'package:flutter/material.dart';
import 'package:flutter_supabase/providers/index.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: OutlinedButton(
          child: Text('Login'),
          onPressed: () {
            Provider.of<IndexProvider>(context, listen: false).login();
          },
        ),
      ),
    );
  }
}

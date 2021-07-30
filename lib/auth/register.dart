import 'package:flutter/material.dart';
import 'package:flutter_supabase/providers/index.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Center(
        child: OutlinedButton(
          child: Text('Register'),
          onPressed: () {
            Provider.of<IndexProvider>(context, listen: false).register();
          },
        ),
      ),
    );
  }
}

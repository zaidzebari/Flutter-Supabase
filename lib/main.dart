import 'package:flutter/material.dart';
import 'package:flutter_supabase/constant.dart';
import 'package:flutter_supabase/providers/index.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Supabase.initialize(
    url: SUPABASE_URL,
    anonKey: SUPABASE_ANNON_KEY,
    authCallbackUrlHostname: 'login-callback',
  );
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("go a way zaid!"),
      ),
    );
  }
}

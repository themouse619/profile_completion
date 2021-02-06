import 'package:flutter/material.dart';
import 'package:profile_completion/Screens/ColorfullIndicator.dart';
import 'package:profile_completion/Screens/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Home(),
        '/RoutinePage': (BuildContext context) => RoutinePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

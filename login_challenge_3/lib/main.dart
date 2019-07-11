import 'package:flutter/material.dart';
import 'package:login_challenge_3/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF50b6bb),
      ),
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
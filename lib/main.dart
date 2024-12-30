import 'package:flutter/material.dart';
import 'package:school_management_system/home_all.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voice Recognition App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeAll(),
    );
  }
}

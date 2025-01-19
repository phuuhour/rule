import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:school_management_system/bottom_nav/home_bottom_nav.dart';
// ignore: unused_import
import 'package:school_management_system/bottom_nav/student_bottom_nav.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(RULE());
}

class RULE extends StatelessWidget {
  const RULE({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RULE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeBottomNav(),
      debugShowCheckedModeBanner: false,
    );
  }
}

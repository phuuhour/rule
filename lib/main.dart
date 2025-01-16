import 'package:flutter/material.dart';
import 'package:school_management_system/home_all_bottomnav.dart';

void main() {
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
      home: BottomNav(),
      debugShowCheckedModeBanner: false,
    );
  }
}

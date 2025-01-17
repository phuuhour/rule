import 'package:flutter/material.dart';

class StudentSchedule extends StatelessWidget {
  const StudentSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
      ),
      body: Center(
        child: Text('No Schedule available.'),
      ),
    );
  }
}

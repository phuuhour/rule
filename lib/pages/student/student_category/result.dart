import 'package:flutter/material.dart';

class StudentResult extends StatelessWidget {
  const StudentResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Text('No result available.'),
      ),
    );
  }
}

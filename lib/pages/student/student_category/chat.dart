import 'package:flutter/material.dart';

class StudentChat extends StatelessWidget {
  const StudentChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Center(
        child: Text('No chat available.'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TeacherChat extends StatelessWidget {
  const TeacherChat({super.key});

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

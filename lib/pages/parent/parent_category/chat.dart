import 'package:flutter/material.dart';

class ParentChat extends StatelessWidget {
  const ParentChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parent Chat'),
      ),
      body: Center(
        child: Text('No chat available.'),
      ),
    );
  }
}

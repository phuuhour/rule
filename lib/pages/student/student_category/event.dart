import 'package:flutter/material.dart';

class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event'),
      ),
      body: Center(
        child: Text('No announcements available.'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Announcement extends StatelessWidget {
  const Announcement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Announcement'),
      ),
      body: Center(
        child: Text('No announcements available.'),
      ),
    );
  }
}

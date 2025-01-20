import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  const Score({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Score'),
      ),
      body: Center(
        child: Text('No result available.'),
      ),
    );
  }
}

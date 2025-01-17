import 'package:flutter/material.dart';

class StudentPayment extends StatelessWidget {
  const StudentPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Center(
        child: Text('No payment available.'),
      ),
    );
  }
}

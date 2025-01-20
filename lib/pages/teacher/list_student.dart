import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class ListStudent extends StatelessWidget {
  const ListStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black87,
            size: 22,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "List Student",
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedArrangeByLettersAZ,
                  color: Colors.black87))
        ],
      ),
      body: Center(
        child: Text('No student available.'),
      ),
    );
  }
}

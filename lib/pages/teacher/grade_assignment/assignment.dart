import 'package:flutter/material.dart';
import 'package:school_management_system/pages/student/student_category/grade_assignment/model_grade_assignment.dart';

class AssignmentScreen extends StatelessWidget {
  final List<Assignment> assignments;

  const AssignmentScreen({super.key, required this.assignments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black87, size: 20),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Assignments",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView.builder(
        itemCount: assignments.length,
        itemBuilder: (context, index) {
          return Container(
            height: 80,
            decoration: BoxDecoration(color: Colors.white),
            margin: EdgeInsets.only(top: 1),
            child: Center(
              child: ListTile(
                title: Text(
                  assignments[index].assignmentTitle,
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Expied: ${assignments[index].expiredDate}",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

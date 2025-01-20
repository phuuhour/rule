import 'package:flutter/material.dart';
import 'package:school_management_system/pages/student/student_category/grade_assignment/json_file_loader.dart';
import 'package:school_management_system/pages/student/student_category/grade_assignment/assignment.dart';
import 'package:school_management_system/pages/student/student_category/grade_assignment/model_grade_assignment.dart';

class GradeTeacher extends StatelessWidget {
  const GradeTeacher({super.key});

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
          "Grades",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: FutureBuilder<List<GradeAssignments>>(
        future: loadAssignments(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text("Error loading data"));
          }
          final grades = snapshot.data!;
          return ListView.builder(
            itemCount: grades.length,
            itemBuilder: (context, index) {
              final grade = grades[index];
              return Container(
                height: 80,
                decoration: BoxDecoration(color: Colors.white),
                margin: EdgeInsets.only(top: 1),
                child: Center(
                  child: ListTile(
                    title: Text(
                      grade.title,
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Teacher: ${grade.teachername}"),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        grade.logoPath,
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_sharp, size: 16),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AssignmentScreen(assignments: grade.assignments),
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

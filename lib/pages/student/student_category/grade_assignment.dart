import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:school_management_system/data/student_category/grade_assignment.dart';

class GradeAssignment extends StatelessWidget {
  const GradeAssignment({super.key});

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
            Navigator.pop(context); // Navigate back to the previous page
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Grades & Assignments",
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(top: 2),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: grade.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 2,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    title: Text(
                      grade[index].title,
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      grade[index].subtitle,
                      style: TextStyle(color: Colors.black45),
                    ),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image(
                        image: AssetImage(
                          grade[index].logoPath,
                        ),
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.black45,
                      size: 16,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

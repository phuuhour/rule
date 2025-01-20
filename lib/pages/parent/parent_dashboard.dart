import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:school_management_system/grid/grid_parent.dart';
import 'package:school_management_system/pages/home/home_category/information.dart';
import 'package:school_management_system/pages/parent/parent_category/chat.dart';
import 'package:school_management_system/pages/student/student_category/attendance.dart';
import 'package:school_management_system/pages/student/student_category/contact.dart';
import 'package:school_management_system/pages/student/student_category/grade_assignment/grade.dart';
import 'package:school_management_system/pages/student/student_category/result.dart';

class ParentDashboard extends StatelessWidget {
  const ParentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/imgs/appbar_logo.png',
              fit: BoxFit.contain,
              height: 80,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Text(
                          DateFormat('EEEE, dd, MMMM, yyyy')
                              .format(DateTime.now()),
                          style: TextStyle(
                              fontSize: 13.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Child's Grade : IT4C01",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 0.3,
                      crossAxisSpacing: 0.3,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: menuparent.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          switch (menuparent[index].title) {
                            case 'Grade & Assignment':
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GradeStudent()),
                              );
                              break;
                            case 'Attendance':
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StudentAttendance()),
                              );
                              break;
                            case 'Chat':
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ParentChat()),
                              );
                              break;
                            case 'Result':
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StudentResult()),
                              );
                              break;
                            case 'Contact':
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Contact()),
                              );
                              break;
                            case 'Information':
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Information()),
                              );
                              break;
                            default:
                          }
                        },
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                menuparent[index].iconPath,
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                menuparent[index].title,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 12.0),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

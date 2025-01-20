import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:school_management_system/grid/grid_student.dart';
import 'package:school_management_system/pages/home/home_category/information.dart';
import 'package:school_management_system/pages/student/student_category/attendance.dart';
import 'package:school_management_system/pages/student/student_category/chat.dart';
import 'package:school_management_system/pages/student/student_category/contact.dart';
import 'package:school_management_system/pages/student/student_category/event.dart';
import 'package:school_management_system/pages/student/student_category/grade_assignment/grade.dart';
import 'package:school_management_system/pages/student/student_category/payment.dart';
import 'package:school_management_system/pages/student/student_category/result.dart';
import 'package:school_management_system/pages/student/student_category/schedule.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

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
                          "Grade : IT4C01",
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
                    itemCount: menustudent.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          switch (menustudent[index].title) {
                            case 'Grade & Assignment':
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GradeStudent()),
                              );
                              break;
                            case 'Schedule':
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StudentSchedule()),
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
                                    builder: (context) => StudentChat()),
                              );
                              break;
                            case 'Result':
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StudentResult()),
                              );
                              break;
                            case 'Payment':
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StudentPayment()),
                              );
                              break;
                            case 'Announcement':
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Announcement()),
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
                                menustudent[index].iconPath,
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                menustudent[index].title,
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

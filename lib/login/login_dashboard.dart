import 'package:flutter/material.dart';
import 'package:school_management_system/login/parent_login.dart';
import 'package:school_management_system/login/student_login.dart';
import 'package:school_management_system/login/teacher_login.dart';
import 'package:school_management_system/login/loginbtn.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final List<LoginButton> loginButtons = [
    LoginButton(
      imagePath: 'assets/icons/student.png',
      logintext: 'Login as Student',
    ),
    LoginButton(
      imagePath: 'assets/icons/teacher.png',
      logintext: 'Login as Teacher',
    ),
    LoginButton(
      imagePath: 'assets/icons/parent.png',
      logintext: 'Login as Parent',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/imgs/rule_login.png'),
                    height: 260,
                  ),
                  SizedBox(height: 80),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: loginButtons.map((loginbtn) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                if (loginbtn.logintext == 'Login as Student') {
                                  return Student();
                                } else if (loginbtn.logintext ==
                                    'Login as Teacher') {
                                  return Teacher();
                                } else if (loginbtn.logintext ==
                                    'Login as Parent') {
                                  return Parent();
                                } else {
                                  return Container();
                                }
                              },
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child: Row(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  loginbtn.imagePath),
                                              height: 25,
                                              filterQuality: FilterQuality.high,
                                            ),
                                            SizedBox(width: 15),
                                            Text(
                                              loginbtn.logintext,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:school_management_system/View/student.dart';
import 'package:school_management_system/loginbtn.dart';

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
      appBar: AppBar(
        title: ListTile(
          title: Text("Name Student"),
          subtitle: Text("Class 10"),
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/icons/student.png'),
          ),
        ),
      ),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Student()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: loginButtons.map((loginbtn) {
                        return Column(
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
                        );
                      }).toList(),
                    ),
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

import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:school_management_system/dashbord/student_dashbord.dart';

class Student extends StatefulWidget {
  Student({super.key});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  final TextEditingController tPasswdID = TextEditingController();
  final TextEditingController tStuID = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/imgs/appbar_logo.png'),
                  height: 90,
                ),
                const SizedBox(height: 70),
                Image.asset(
                  'assets/icons/student.png',
                  height: 80,
                ),
                const SizedBox(height: 15),
                const Text(
                  'Student',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Login to your account',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: tStuID,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        hintText: 'Student ID',
                        prefixIcon: Icon(HugeIcons.strokeRoundedUserCircle,
                            color: Colors.amber),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Colors.amber,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Colors.amber,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Colors.amber,
                            width: 2,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white70),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: tPasswdID,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        hintText: 'Password',
                        suffixIcon: Icon(
                          HugeIcons.strokeRoundedViewOffSlash,
                          color: Colors.amber,
                        ),
                        prefixIcon: Icon(HugeIcons.strokeRoundedLockPassword,
                            color: Colors.amber),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Colors.amber,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Colors.amber,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(color: Colors.amber, width: 2),
                        ),
                        filled: true,
                        fillColor: Colors.white70),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 60),
                GestureDetector(
                  onTap: () {
                    if (tStuID.text == 'student' &&
                        tPasswdID.text == 'student') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StudentDashbord(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Invalid credentials'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

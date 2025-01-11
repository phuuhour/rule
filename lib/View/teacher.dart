import 'package:flutter/material.dart';

class Teacher extends StatefulWidget {
  const Teacher({super.key});

  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/imgs/appbar_logo.png'),
                height: 90,
              ),
              const SizedBox(height: 50),
              Image.asset(
                'assets/icons/teacher.png',
                height: 80,
              ),
              const SizedBox(height: 15),
              const Text(
                'Teacher',
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
                  decoration: InputDecoration(
                    hintText: 'Teacher ID',
                    suffixIcon: Icon(
                      Icons.verified_user,
                      color: Colors.amber,
                    ),
                    prefixIcon: Icon(Icons.person, color: Colors.amber),
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
                      ),
                    ),
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

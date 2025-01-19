import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:school_management_system/bottom_nav/student_bottom_nav.dart';

class StudentLogin extends StatefulWidget {
  const StudentLogin({super.key});

  @override
  State<StudentLogin> createState() => _StudentLoginState();
}

class _StudentLoginState extends State<StudentLogin> {
  final TextEditingController tPasswdID = TextEditingController();
  final TextEditingController tStuEmail = TextEditingController();

  bool _isLoading = false;

  Future<void> handleLogin(BuildContext context, TextEditingController tStuID,
      TextEditingController tPasswdID) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);

    setState(() {
      _isLoading = true;
    });

    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: tStuID.text,
        password: tPasswdID.text,
      );

      if (credential.user != null) {
        final querySnapshot = await FirebaseFirestore.instance
            .collection('students')
            .where('email', isEqualTo: tStuID.text)
            .get();

        if (!mounted) return;

        if (querySnapshot.docs.isNotEmpty) {
          navigator.pushReplacement(
            MaterialPageRoute(
              builder: (context) => const StudentBottomNav(),
            ),
          );
        } else {
          scaffoldMessenger.showSnackBar(
            const SnackBar(content: Text('Not a student account')),
          );
        }
      }
    } on FirebaseAuthException catch (e) {
      String errorMessage = 'An error occurred';
      if (e.code == 'user-not-found') {
        errorMessage = 'No user found with this email';
      } else if (e.code == 'wrong-password') {
        errorMessage = 'Wrong password';
      }
      if (!mounted) return;

      scaffoldMessenger.showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = false;
  }

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
                    controller: tStuEmail,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        hintText: 'Student Email',
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
                    obscureText: !_obscureText,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        hintText: 'Password',
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            icon: (_obscureText
                                ? HugeIcon(
                                    icon: HugeIcons.strokeRoundedViewOffSlash,
                                    color: Colors.amber)
                                : HugeIcon(
                                    icon: HugeIcons.strokeRoundedView,
                                    color: Colors.amber))),
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
                  ),
                ),
                SizedBox(height: 60),
                GestureDetector(
                  onTap: _isLoading
                      ? null
                      : () {
                          handleLogin(context, tStuEmail, tPasswdID);
                        },
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(
                      child: _isLoading
                          ? const CircularProgressIndicator(color: Colors.white)
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

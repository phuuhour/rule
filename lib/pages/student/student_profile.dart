import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Firestore integration
import 'package:firebase_auth/firebase_auth.dart'; // Firebase Authentication

class StudentProfile extends StatelessWidget {
  const StudentProfile(
      {super.key, required String studentId, required String email});

  Future<Map<String, dynamic>?> getStudentData() async {
    try {
      // Get the current authenticated user
      User? currentUser = FirebaseAuth.instance.currentUser;

      if (currentUser == null) {
        throw Exception("User not logged in");
      }

      String email = currentUser.email ?? ""; // Get the user's email

      // Query Firestore for the student document by email
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection('students')
          .where('email', isEqualTo: email)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        // Return the first document data
        return querySnapshot.docs.first.data() as Map<String, dynamic>;
      } else {
        throw Exception("No student data found for the current user.");
      }
    } catch (e) {
      debugPrint("Error fetching student data: $e");
      return null;
    }
  }

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
      body: FutureBuilder<Map<String, dynamic>?>(
        future: getStudentData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Text("Error loading data: ${snapshot.error}"),
            );
          }

          if (!snapshot.hasData || snapshot.data == null) {
            return const Center(child: Text("No data found for this user."));
          }

          final studentData = snapshot.data!;
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.network(
                      studentData['image_url'],
                      fit: BoxFit.cover,
                      height: 150,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Here is my account information',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  _buildStudentInfo('First Name', studentData['firstname']),
                  _buildStudentInfo('Last Name', studentData['lastname']),
                  _buildStudentInfo('Gender', studentData['gender']),
                  _buildStudentInfo('Phone', studentData['tel']),
                  _buildStudentInfo('Email', studentData['email']),
                  _buildStudentInfo('Address', studentData['address']),
                  _buildStudentInfo('Date of Birth', studentData['dob']),
                  _buildStudentInfo(
                      'Class ID', studentData['class_id'].toString()),
                  _buildStudentInfo('Father Name', studentData['father_name']),
                  _buildStudentInfo('Mother Name', studentData['mother_name']),
                  _buildStudentInfo(
                      'Scholarship', studentData['scholarship'] ? 'Yes' : 'No'),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // Helper widget to display student information
  Widget _buildStudentInfo(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label: ',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}

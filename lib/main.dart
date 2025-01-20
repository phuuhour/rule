import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:school_management_system/bottom_nav/home_bottom_nav.dart';
// ignore: unused_import
import 'package:school_management_system/bottom_nav/student_bottom_nav.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(RULE());
}

class RULE extends StatelessWidget {
  const RULE({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RULE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeBottomNav(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart'; // For loading assets
// import 'package:firebase_core/firebase_core.dart'; // Initialize Firebase
// import 'package:cloud_firestore/cloud_firestore.dart'; // Firestore integration

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(); // Initialize Firebase
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Add Students to Firestore')),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: addStudentsFromJson,
//             child: Text('Add Students'),
//           ),
//         ),
//       ),
//     );
//   }
// }

// Future<void> addStudentsFromJson() async {
//   try {
//     // Load the JSON file
//     final String response =
//         await rootBundle.loadString('assets/json/students.json');
//     final List<dynamic> students = json.decode(response);

//     // Firestore collection reference
//     CollectionReference studentsCollection =
//         FirebaseFirestore.instance.collection('students');

//     // Process each student
//     for (var student in students) {
//       final studentId = student['id']; // Assuming 'id' is unique

//       // Check if a document with this 'id' already exists
//       QuerySnapshot existingStudents =
//           await studentsCollection.where('id', isEqualTo: studentId).get();

//       if (existingStudents.docs.isEmpty) {
//         // Add the student if no duplicate is found
//         await studentsCollection.add(student).then((value) {
//           print(
//               "Student Added: ${student['firstname']} ${student['lastname']}");
//         }).catchError((error) {
//           print("Failed to add student: $error");
//         });
//       } else {
//         print(
//             "Duplicate Found: ${student['firstname']} ${student['lastname']} (id: $studentId)");
//       }
//     }

//     print("Data processing complete!");
//   } catch (e) {
//     print("Error: $e");
//   }
// }

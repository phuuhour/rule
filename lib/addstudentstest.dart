import 'dart:convert';
import 'package:flutter/services.dart'; // For loading assets
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> addStudentsFromJson() async {
  // Load the JSON file
  final String response = await rootBundle.loadString('assets/students.json');
  final List<dynamic> students = json.decode(response);

  // Reference to Firestore collection
  CollectionReference studentsCollection =
      FirebaseFirestore.instance.collection('students');

  // Add each student to Firestore
  for (var student in students) {
    await studentsCollection.add(student).then((value) {
      print("Student Added: ${student['firstname']} ${student['lastname']}");
    }).catchError((error) {
      print("Failed to add student: $error");
    });
  }
}

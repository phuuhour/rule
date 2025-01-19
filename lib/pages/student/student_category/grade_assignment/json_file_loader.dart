import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:school_management_system/pages/student/student_category/grade_assignment/model_grade_assignment.dart';

Future<List<GradeAssignments>> loadAssignments() async {
  final String response =
      await rootBundle.loadString('assets/json/grade_assignments.json');
  final List<dynamic> data = json.decode(response)['GradeAssignments'];
  return data.map((item) => GradeAssignments.fromJson(item)).toList();
}

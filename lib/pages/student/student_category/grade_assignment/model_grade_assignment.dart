class GradeAssignments {
  final String title;
  final String teachername;
  final String logoPath;
  final List<Assignment> assignments;

  GradeAssignments({
    required this.title,
    required this.teachername,
    required this.logoPath,
    required this.assignments,
  });

  factory GradeAssignments.fromJson(Map<String, dynamic> json) {
    return GradeAssignments(
      title: json['title'],
      teachername: json['teachername'],
      logoPath: json['logoPath'],
      assignments: (json['assignments'] as List)
          .map((e) => Assignment.fromJson(e))
          .toList(),
    );
  }
}

class Assignment {
  final String assignmentTitle;
  final String expiredDate;

  Assignment({required this.assignmentTitle, required this.expiredDate});

  factory Assignment.fromJson(Map<String, dynamic> json) {
    return Assignment(
      assignmentTitle: json['assignmentTitle'],
      expiredDate: json['expiredDate'],
    );
  }
}

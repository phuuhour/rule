class GradeAssignment {
  final String logoPath;
  final String title;
  final String subtitle;

  GradeAssignment(
      {required this.logoPath, this.title = '', this.subtitle = ''});
}

final List<GradeAssignment> grade = [
  GradeAssignment(
      logoPath: 'assets/imgs/logo_grades/mobile.png',
      title: 'Mobile Programming 2',
      subtitle: 'Expired: 25 / 01 / 2025'),
  GradeAssignment(
      logoPath: 'assets/imgs/logo_grades/ecommerce.png',
      title: 'E-Commcerce',
      subtitle: 'Expired: 28 / 01 / 2025'),
  GradeAssignment(
      logoPath: 'assets/imgs/logo_grades/linux.png',
      title: 'Linux 2',
      subtitle: 'Expired: 30 / 01 / 2025'),
  GradeAssignment(
      logoPath: 'assets/imgs/logo_grades/oracle.png',
      title: 'Oracle',
      subtitle: 'Expired: 05 / 02 / 2025'),
  GradeAssignment(
      logoPath: 'assets/imgs/logo_grades/sad.png',
      title: 'System Analysis and Design 2',
      subtitle: 'Expired: 05 / 05 / 2025'),
];

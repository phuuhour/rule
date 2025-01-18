class GradeAssignment {
  final String logoPath;
  final String title;
  final String teachername;

  GradeAssignment(
      {required this.logoPath, this.title = '', this.teachername = ''});
}

final List<GradeAssignment> grade = [
  GradeAssignment(
      logoPath: 'assets/imgs/logo_grades/mobile.png',
      title: 'Mobile Programming 2',
      teachername: 'Rin Soda'),
  GradeAssignment(
      logoPath: 'assets/imgs/logo_grades/ecommerce.png',
      title: 'E-Commcerce',
      teachername: 'Heang Borey'),
  GradeAssignment(
      logoPath: 'assets/imgs/logo_grades/linux.png',
      title: 'Linux 2',
      teachername: 'Pa David'),
  GradeAssignment(
      logoPath: 'assets/imgs/logo_grades/oracle.png',
      title: 'Oracle',
      teachername: 'Khen Samheng'),
  GradeAssignment(
      logoPath: 'assets/imgs/logo_grades/sad.png',
      title: 'System Analysis and Design 2',
      teachername: 'Chory Solin'),
];

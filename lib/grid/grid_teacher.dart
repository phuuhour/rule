class GridTeacher {
  final String iconPath;
  final String title;

  GridTeacher({required this.iconPath, this.title = ''});
}

final List<GridTeacher> menuteacher = [
  GridTeacher(
      iconPath: 'assets/grid_data/menuteacher/assignment.png',
      title: 'Grade & Assignment'),
  GridTeacher(
      iconPath: 'assets/grid_data/menuteacher/schedule.png', title: 'Schedule'),
  GridTeacher(
      iconPath: 'assets/grid_data/menuteacher/attendance.png',
      title: 'Attendance'),
  GridTeacher(
      iconPath: 'assets/grid_data/menuteacher/liststudent.png',
      title: 'List Student'),
  GridTeacher(iconPath: 'assets/grid_data/menuteacher/chat.png', title: 'Chat'),
  GridTeacher(
      iconPath: 'assets/grid_data/menuteacher/result.png', title: 'Score'),
  GridTeacher(
      iconPath: 'assets/grid_data/menuteacher/event.png',
      title: 'Announcement'),
  GridTeacher(
      iconPath: 'assets/grid_data/menuteacher/contact.png', title: 'Contact'),
  GridTeacher(
      iconPath: 'assets/grid_data/menuhome/news.png', title: 'Information'),
];

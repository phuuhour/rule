class GridStudent {
  final String iconPath;
  final String title;

  GridStudent({required this.iconPath, this.title = ''});
}

final List<GridStudent> menustudent = [
  GridStudent(
      iconPath: 'assets/grid_data/menustudent/assignment.png',
      title: 'Grade & Assignment'),
  GridStudent(
      iconPath: 'assets/grid_data/menustudent/schedule.png', title: 'Schedule'),
  GridStudent(
      iconPath: 'assets/grid_data/menustudent/attendance.png',
      title: 'Attendance'),
  GridStudent(iconPath: 'assets/grid_data/menustudent/chat.png', title: 'Chat'),
  GridStudent(
      iconPath: 'assets/grid_data/menustudent/result.png', title: 'Result'),
  GridStudent(
      iconPath: 'assets/grid_data/menuhome/payment.png', title: 'Payment'),
  GridStudent(
      iconPath: 'assets/grid_data/menustudent/event.png', title: 'Event'),
  GridStudent(
      iconPath: 'assets/grid_data/menustudent/contact.png', title: 'Contact'),
  GridStudent(
      iconPath: 'assets/grid_data/menuhome/news.png', title: 'Information'),
];

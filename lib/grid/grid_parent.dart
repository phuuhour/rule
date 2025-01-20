class GridParent {
  final String iconPath;
  final String title;

  GridParent({required this.iconPath, this.title = ''});
}

final List<GridParent> menuparent = [
  GridParent(
      iconPath: 'assets/grid_data/menustudent/assignment.png',
      title: 'Grade & Assignment'),
  GridParent(
      iconPath: 'assets/grid_data/menustudent/attendance.png',
      title: 'Attendance'),
  GridParent(iconPath: 'assets/grid_data/menustudent/chat.png', title: 'Chat'),
  GridParent(
      iconPath: 'assets/grid_data/menustudent/result.png', title: 'Result'),
  GridParent(
      iconPath: 'assets/grid_data/menustudent/contact.png', title: 'Contact'),
  GridParent(
      iconPath: 'assets/grid_data/menuhome/news.png', title: 'Information'),
];

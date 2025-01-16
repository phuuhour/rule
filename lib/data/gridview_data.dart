class GridItem {
  final String iconPath;
  final String title;

  GridItem({required this.iconPath, this.title = ''});
}

final List<GridItem> menuItems = [
  GridItem(iconPath: 'assets/category/news.png', title: 'Information'),
  GridItem(iconPath: 'assets/category/courses.png', title: 'Courses'),
  GridItem(iconPath: 'assets/category/register.png', title: 'Register'),
  GridItem(iconPath: 'assets/category/price.png', title: 'Tuitions'),
  GridItem(iconPath: 'assets/category/contact.png', title: 'Contact'),
  GridItem(iconPath: 'assets/category/location.png', title: 'Location'),
  GridItem(iconPath: 'assets/category/website.png', title: 'Website'),
  GridItem(iconPath: 'assets/category/job.png', title: 'Jobs'),
  GridItem(iconPath: 'assets/category/payment.png', title: 'Payment'),
];

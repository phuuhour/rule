class GridHome {
  final String iconPath;
  final String title;

  GridHome({required this.iconPath, this.title = ''});
}

final List<GridHome> menuItems = [
  GridHome(iconPath: 'assets/category/news.png', title: 'Information'),
  GridHome(iconPath: 'assets/category/courses.png', title: 'Courses'),
  GridHome(iconPath: 'assets/category/register.png', title: 'Register'),
  GridHome(iconPath: 'assets/category/price.png', title: 'Tuitions'),
  GridHome(iconPath: 'assets/category/contact.png', title: 'Contact'),
  GridHome(iconPath: 'assets/category/location.png', title: 'Location'),
  GridHome(iconPath: 'assets/category/website.png', title: 'Website'),
  GridHome(iconPath: 'assets/category/job.png', title: 'Jobs'),
  GridHome(iconPath: 'assets/category/payment.png', title: 'Payment'),
];

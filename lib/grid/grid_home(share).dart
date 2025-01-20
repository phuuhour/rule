class GridHome {
  final String iconPath;
  final String title;

  GridHome({required this.iconPath, this.title = ''});
}

final List<GridHome> menuhome = [
  GridHome(
      iconPath: 'assets/grid_data/menuhome/news.png', title: 'Information'),
  GridHome(iconPath: 'assets/grid_data/menuhome/courses.png', title: 'Courses'),
  GridHome(
      iconPath: 'assets/grid_data/menuhome/register.png', title: 'Register'),
  GridHome(iconPath: 'assets/grid_data/menuhome/price.png', title: 'Tuitions'),
  GridHome(iconPath: 'assets/grid_data/menuhome/contact.png', title: 'Contact'),
  GridHome(
      iconPath: 'assets/grid_data/menuhome/location.png', title: 'Location'),
  GridHome(iconPath: 'assets/grid_data/menuhome/website.png', title: 'Website'),
  GridHome(iconPath: 'assets/grid_data/menuhome/job.png', title: 'Jobs'),
  GridHome(iconPath: 'assets/grid_data/menuhome/payment.png', title: 'Payment'),
];

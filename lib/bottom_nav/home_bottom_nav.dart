import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:school_management_system/pages/home/home_dashboard.dart';
import 'package:school_management_system/pages/home/login_dashboard.dart';
import 'package:school_management_system/pages/home/settings_page.dart';

class HomeBottomNav extends StatefulWidget {
  const HomeBottomNav({super.key});

  @override
  _HomeBottomNavState createState() => _HomeBottomNavState();
}

class _HomeBottomNavState extends State<HomeBottomNav> {
  int _selectedIndex = 0;

  late List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    _widgetOptions = <Widget>[
      HomeDashboard(context),
      LoginPage(),
      SettingsPage(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Theme.of(context);
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: _onItemTapped,
        indicatorColor: Colors.amber,
        backgroundColor: Colors.white,
        selectedIndex: _selectedIndex,
        destinations: const <NavigationDestination>[
          NavigationDestination(
            selectedIcon: Icon(
              Boxicons.bxs_home,
              color: Colors.white,
            ),
            icon: Icon(Boxicons.bx_home),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Boxicons.bxs_user, color: Colors.white),
            icon: Icon(Boxicons.bx_user),
            label: 'Login',
          ),
          NavigationDestination(
            selectedIcon: Icon(Boxicons.bxs_cog, color: Colors.white),
            icon: Icon(Boxicons.bx_cog),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

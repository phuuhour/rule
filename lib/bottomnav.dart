import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:school_management_system/home_all.dart';
import 'package:school_management_system/loginpage.dart';
import 'package:school_management_system/settingpage.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  late List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    _widgetOptions = <Widget>[
      HomeAll(context),
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

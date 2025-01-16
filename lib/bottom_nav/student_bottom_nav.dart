import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:school_management_system/pages/home/settings_page.dart';
import 'package:school_management_system/pages/student/student_attendance.dart';
import 'package:school_management_system/pages/student/student_dashboard.dart';

class StudentBottomNav extends StatefulWidget {
  const StudentBottomNav({super.key});

  @override
  _StudentBottomNavState createState() => _StudentBottomNavState();
}

class _StudentBottomNavState extends State<StudentBottomNav> {
  int _selectedIndex = 0;

  late List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    _widgetOptions = <Widget>[
      StudentDashboard(),
      StudentAttendance(),
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
            selectedIcon: Icon(Boxicons.bxs_user_check, color: Colors.white),
            icon: Icon(Boxicons.bx_user_check),
            label: 'Attendance',
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

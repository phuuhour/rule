import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:school_management_system/pages/teacher/teacher_attendance.dart';
import 'package:school_management_system/pages/teacher/teacher_dashboard.dart';
import 'package:school_management_system/pages/teacher/teacher_profile.dart';

class TeacherBottomNav extends StatefulWidget {
  const TeacherBottomNav({super.key});

  @override
  _TeacherBottomNavState createState() => _TeacherBottomNavState();
}

class _TeacherBottomNavState extends State<TeacherBottomNav> {
  int _selectedIndex = 0;

  late List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    _widgetOptions = <Widget>[
      TeacherDashboard(),
      CodeAttendance(),
      TeacherProfile(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<bool> _loadNewPage() async {
    if (Platform.isAndroid) {
      SystemNavigator.pop();
    } else {
      Navigator.of(context).pop();
    }
    return Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    Theme.of(context);
    return WillPopScope(
      onWillPop: _loadNewPage,
      child: Scaffold(
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
              label: 'Code Attendance',
            ),
            NavigationDestination(
              selectedIcon: Icon(Boxicons.bxs_user, color: Colors.white),
              icon: Icon(Boxicons.bx_user),
              label: 'My Profile',
            ),
          ],
        ),
      ),
    );
  }
}

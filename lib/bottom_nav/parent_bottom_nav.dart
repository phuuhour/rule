import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:school_management_system/pages/parent/parent_dashboard.dart';
import 'package:school_management_system/pages/parent/parent_profile.dart';

class ParentBottomNav extends StatefulWidget {
  const ParentBottomNav({super.key});

  @override
  _ParentBottomNavState createState() => _ParentBottomNavState();
}

class _ParentBottomNavState extends State<ParentBottomNav> {
  int _selectedIndex = 0;

  late List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    _widgetOptions = <Widget>[
      ParentDashboard(),
      ParentProfile(),
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

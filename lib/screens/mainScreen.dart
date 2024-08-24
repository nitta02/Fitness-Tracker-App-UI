import 'package:fitness_tracker_ui/screens/activites/activites.dart';
import 'package:fitness_tracker_ui/screens/document/document.dart';
import 'package:fitness_tracker_ui/screens/home/home.dart';
import 'package:fitness_tracker_ui/screens/profile/profile.dart';
import 'package:fitness_tracker_ui/screens/search/search.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const ActivitesScreen(),
    const DocumentScreen(),
    const ProfileScreen(),
  ];
  int _selectedindex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(IconlyLight.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.activity), label: 'Activity'),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.document), label: 'Advice'),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.profile), label: 'Profile'),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}

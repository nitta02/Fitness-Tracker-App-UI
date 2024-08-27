import 'package:fitness_tracker_ui/screens/activites/activites.dart';
import 'package:fitness_tracker_ui/screens/document/document.dart';
import 'package:fitness_tracker_ui/screens/home/home.dart';
import 'package:fitness_tracker_ui/screens/profile/profile.dart';
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
    const ActivitesScreen(),
    const DocumentScreen(),
    const ProfileScreen(),
  ];
  int _selectedindex = 0;
  bool selectedIcon = true;

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
      selectedIcon = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedindex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, 20),
              blurRadius: 20,
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BottomNavigationBar(
            currentIndex: _selectedindex,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(selectedIcon ? IconlyLight.home : IconlyBold.home),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(selectedIcon
                      ? IconlyLight.activity
                      : IconlyBold.activity),
                  label: 'Activity'),
              BottomNavigationBarItem(
                  icon: Icon(selectedIcon
                      ? IconlyLight.document
                      : IconlyBold.document),
                  label: 'Advice'),
              BottomNavigationBarItem(
                  icon: Icon(
                      selectedIcon ? IconlyLight.profile : IconlyBold.profile),
                  label: 'Profile'),
            ],
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}

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
      body: Stack(
        children: [
          screens[_selectedindex],
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/05/24/05/36/woman-5212479_640.png'),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    IconlyLight.notification,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
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

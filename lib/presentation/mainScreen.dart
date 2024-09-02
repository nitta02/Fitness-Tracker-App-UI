import 'package:fitness_tracker_ui/core/theme/colors.dart';
import 'package:fitness_tracker_ui/presentation/screens/activites/activites.dart';
import 'package:fitness_tracker_ui/presentation/screens/search/search.dart';
import 'package:fitness_tracker_ui/presentation/screens/home/home.dart';
import 'package:fitness_tracker_ui/presentation/screens/profile/profile.dart';
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
    const SearchScreen(),
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
                      "https://pics.craiyon.com/2023-10-22/95bbbe67fe014f92847d28f43bd24c5b.webp"),
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
        margin: EdgeInsets.symmetric(
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
            backgroundColor: backgroundColor,
            currentIndex: _selectedindex,
            selectedItemColor: primaryColor,
            unselectedItemColor: titleColor,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                      _selectedindex == 0 ? IconlyBold.home : IconlyLight.home),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(_selectedindex == 1
                      ? IconlyBold.activity
                      : IconlyLight.activity),
                  label: 'Activity'),
              BottomNavigationBarItem(
                  icon: Icon(_selectedindex == 2
                      ? IconlyBold.search
                      : IconlyLight.search),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(_selectedindex == 3
                      ? IconlyBold.profile
                      : IconlyLight.profile),
                  label: 'Profile'),
            ],
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}

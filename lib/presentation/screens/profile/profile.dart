import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffF5F5F5), // Light grey background
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 15,
          right: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            _profileHeader(),
            const SizedBox(height: 20),
            _editButton(),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),
            _statsSection(),
            const SizedBox(height: 30),
            _settingsOption('Theme Mode', IconlyLight.more_circle),
            const SizedBox(height: 15),
            _settingsOption('Sign out', IconlyLight.logout),
          ],
        ),
      ),
    );
  }

  Widget _profileHeader() {
    return const Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
            "https://pics.craiyon.com/2023-10-22/95bbbe67fe014f92847d28f43bd24c5b.webp",
          ),
          radius: 60,
        ),
        SizedBox(height: 20),
        Text(
          'Name',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xff424242), // Dark grey
          ),
        ),
        Text(
          'Email@gmail.com',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: Color(0xff757575), // Medium grey
          ),
        ),
      ],
    );
  }

  Widget _editButton() {
    return Container(
      height: 35,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Center(
        child: Text(
          'Edit Profile',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _statsSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _statItem(IconlyLight.document, '5', 'Completed', Colors.green),
        _statItem(IconlyLight.wallet, '5', 'Remaining', Colors.red),
      ],
    );
  }

  Widget _statItem(IconData icon, String number, String label, Color color) {
    return Column(
      children: [
        Icon(icon, size: 30, color: color),
        const SizedBox(height: 5),
        Text(
          number,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xff757575), // Medium grey
          ),
        ),
      ],
    );
  }

  Widget _settingsOption(String text, IconData icon) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 15,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xff424242), // Dark grey
            ),
          ),
          Icon(icon, color: const Color(0xff757575)), // Medium grey
        ],
      ),
    );
  }
}

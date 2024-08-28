import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 50,
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar()
          ],
        ),
      ),
    );
  }
}

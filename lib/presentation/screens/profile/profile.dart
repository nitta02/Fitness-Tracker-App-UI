import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Column(
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2020/05/24/05/36/woman-5212479_640.png'),
                    radius: 60,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Email@gmail.com',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.blue,
              )),
              child: const Center(
                child: Text('Edit'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(IconlyLight.document),
                    Text(
                      '5',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      'Completed',
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(IconlyLight.wallet),
                    Text(
                      '5',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Remaining'),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Theme Mode'),
                  Icon(IconlyLight.more_circle),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sign out'),
                  Icon(IconlyLight.logout),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

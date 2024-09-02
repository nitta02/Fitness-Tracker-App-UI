import 'package:fitness_tracker_ui/core/theme/colors.dart';
import 'package:fitness_tracker_ui/presentation/mainScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //  primary background color
        scaffoldBackgroundColor: backgroundColor, // Or any other color
        //  primary and accent colors
        primaryColor: softBlue,
        hintColor: coolGreen,
        //  text color for better contrast
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black),
        ),
        // Customize other UI elements
        appBarTheme: const AppBarTheme(
          backgroundColor: softBlue,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: darkGray,
          selectedItemColor: warmPeach,
          unselectedItemColor: Colors.grey,
        ),
        fontFamily: 'Poppins',
      ),
      home: const MainScreen(),
    );
  }
}

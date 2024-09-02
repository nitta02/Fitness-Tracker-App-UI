// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class Calorewidget extends StatelessWidget {
  final String texxt;
  final String calText;
  final IconData? icondata;
  final String image;

  const Calorewidget({
    super.key,
    required this.texxt,
    required this.calText,
    this.icondata,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 170,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), // More rounded corners
        gradient: const LinearGradient(
          colors: [Color(0xfffF5F5F5), Color(0xffe0f7fa)], // Light gradient
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color:
                      const Color(0xff48CFCB), // Teal color for icon background
                  shape: BoxShape.circle, // Circular icon background
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 8,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.all(8.0), // Padding inside the container
                  child: Image.asset(image),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                texxt,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xfff424242), // Dark grey for main text
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          Text(
            calText,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Color(0xfff229799), // Magenta for secondary text
              letterSpacing: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}

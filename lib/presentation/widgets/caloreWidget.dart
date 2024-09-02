// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Calorewidget extends StatelessWidget {
  final String texxt;
  final String calText;
  IconData? icondata;
  final String image;
  Calorewidget(
      {super.key,
      required this.texxt,
      required this.calText,
      this.icondata,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 170,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(image),
              ),
              Text(
                texxt,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Text(
            '$calText',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Calorewidget extends StatelessWidget {
  final String texxt;
  final String calText;
  final IconData icondata;
  const Calorewidget(
      {super.key,
      required this.texxt,
      required this.calText,
      required this.icondata});

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
                child: Icon(
                  icondata,
                ),
              ),
              Text(
                texxt,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Text(
            '$calText',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

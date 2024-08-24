import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';

class ActivitesScreen extends StatelessWidget {
  const ActivitesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
              ),
              borderRadius: BorderRadius.circular(2),
            ),
            child: Sparkline(
              data: data,
              pointsMode: PointsMode.all,
              pointColor: Colors.black,
              fillColor: Colors.lightBlueAccent,
              fillMode: FillMode.below,
            ),
          ),
        ],
      ),
    );
  }
}

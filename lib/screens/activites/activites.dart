import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:fitness_tracker_ui/core/utils/itemsData.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ActivitesScreen extends StatelessWidget {
  const ActivitesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Start a new Activity',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Set a Goal & Track',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      Icon(IconlyLight.arrow_right_2),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: SizedBox(
                        height: 50,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: weekActivity.length,
                          itemBuilder: (context, index) {
                            String day = weekActivity.keys.elementAt(index);
                            String activity = weekActivity[day]!['activity'];
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          activity,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    day,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        )),
                  )
                ],
              ),
            ),
          ),
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

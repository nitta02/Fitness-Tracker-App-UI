import 'package:fitness_tracker_ui/core/utils/itemsData.dart';
import 'package:fitness_tracker_ui/core/widgets/barGraph.dart';
import 'package:flutter/material.dart';

import 'package:iconly/iconly.dart';

class ActivitesScreen extends StatelessWidget {
  const ActivitesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<double> data = [
      10.0,
      20.5,
      24.0,
      30.5,
      15.0,
      60.5,
      10.0,
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50.0,
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            _activitySection(context),
            // Container(
            //   decoration: BoxDecoration(
            //     border: Border.all(
            //       width: 1,
            //     ),
            //     borderRadius: BorderRadius.circular(2),
            //   ),
            //   child: Sparkline(
            //     data: data,
            //     pointsMode: PointsMode.all,
            //     pointColor: Colors.black,
            //     fillColor: Colors.lightBlueAccent,
            //     fillMode: FillMode.below,
            //   ),
            // ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: BarGraphWidget(
                summary: data,
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _activitySection(BuildContext context) {
    return Container(
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
    );
  }
}

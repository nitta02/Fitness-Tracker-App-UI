import 'package:fitness_tracker_ui/core/theme/colors.dart';
import 'package:fitness_tracker_ui/core/utils/itemsData.dart';
import 'package:fitness_tracker_ui/presentation/widgets/caloreWidget.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor, // Set background color
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50.0,
            left: 15,
            right: 15,
          ),
          child: Column(
            children: [
              const SizedBox(height: 20),
              _dailyGoalSection(context, weekPercentages),
              const SizedBox(height: 20),
              lastWorkoutSection(),
              const SizedBox(height: 20),
              _caloreSection(),
            ],
          ),
        ),
      ),
    );
  }

  Container lastWorkoutSection() {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Last Workout: ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: titleColor, // Use title color
                  ),
                  children: [
                    TextSpan(
                      text: 'Swimming',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: primaryColor, // Use primary color
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Duration: 1.5 hours',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w200,
                  color: titleColor.withOpacity(0.6), // Lightened title color
                ),
              ),
            ],
          ),
          Icon(
            IconlyLight.arrow_right_2,
            color: primaryColor, // Use primary color for the icon
          ),
        ],
      ),
    );
  }

  Column _caloreSection() {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Calorewidget(
              texxt: 'Protein',
              calText: '120 Cal',
              image: 'lib/assets/icons/protin.png',
            ),
            Calorewidget(
              texxt: 'Calories',
              calText: '20 g',
              image: 'lib/assets/icons/cal.png',
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Calorewidget(
              texxt: 'Fat',
              calText: '320 g',
              image: 'lib/assets/icons/fats.png',
            ),
            Calorewidget(
              texxt: 'Carbs',
              calText: '70 g',
              image: 'lib/assets/icons/carbs.png',
            ),
          ],
        ),
      ],
    );
  }

  Container _dailyGoalSection(
    BuildContext context,
    Map<String, Map<String, dynamic>> weekPercentages,
  ) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.21,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Daily Goal',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: titleColor, // Use title color
                      ),
                    ),
                    Text(
                      'Last 7 days',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color:
                            titleColor.withOpacity(0.6), // Lighter title color
                      ),
                    ),
                  ],
                ),
                Icon(
                  IconlyLight.arrow_right_2,
                  color: primaryColor, // Primary color for the icon
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: weekPercentages.length,
                  itemBuilder: (context, index) {
                    String day = weekPercentages.keys.elementAt(index);
                    double percent = weekPercentages[day]!['percent'];
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          CircularPercentIndicator(
                            radius: 20,
                            lineWidth: 7,
                            percent: percent,
                            progressColor:
                                secondaryColor, // Use secondary color
                          ),
                          Text(
                            day,
                            style: TextStyle(
                              fontSize: 10,
                              color: titleColor, // Title color for day text
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

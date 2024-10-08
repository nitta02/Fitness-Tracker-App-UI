import 'package:fitness_tracker_ui/core/utils/itemsData.dart';
import 'package:fitness_tracker_ui/presentation/widgets/barGraph.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ActivitesScreen extends StatelessWidget {
  const ActivitesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<double> data = [10.0, 20.5, 24.0, 30.5, 15.0, 60.5, 10.0];
    List<String> section = ['Week', 'Month', 'Year', 'All Time'];
    String selectedSection = 'Week';

    return Scaffold(
      backgroundColor: const Color(0xfffF5F5F5), // Background color
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _sectionSelector(section, selectedSection),
            const SizedBox(height: 20),
            _titleText('Activities'),
            const SizedBox(height: 10),
            _barGraph(data),
            const SizedBox(height: 20),
            _goalSummary(),
            const SizedBox(height: 20),
            _activitySection(context),
          ],
        ),
      ),
    );
  }

  Widget _sectionSelector(List<String> section, String selectedSection) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffe0e0e0), // Light grey
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: section
            .map(
              (item) => GestureDetector(
                onTap: () {},
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  decoration: BoxDecoration(
                    color: selectedSection == item
                        ? Colors.white
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    item,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: selectedSection == item
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: selectedSection == item
                          ? const Color(0xff424242) // Dark grey
                          : const Color(0xff9e9e9e), // Light grey
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _titleText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0xff424242), // Dark grey
      ),
    );
  }

  Widget _barGraph(List<double> data) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: BarGraphWidget(summary: data),
    );
  }

  Widget _goalSummary() {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
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
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(IconlyLight.time_square,
                  color: Color(0xff48CFCB)), // Teal color
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '100 Goals of the Movement',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color(0xff424242), // Dark grey
                    ),
                  ),
                  Text(
                    '57 out of 100 days',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff9e9e9e), // Light grey
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(IconlyLight.arrow_right_2,
              color: Color(0xff48CFCB)), // Teal color
        ],
      ),
    );
  }

  Container _activitySection(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                        fontSize: 16,
                        color: Color(0xff424242), // Dark grey
                      ),
                    ),
                    Text(
                      'Set a Goal & Track',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff9e9e9e), // Light grey
                      ),
                    ),
                  ],
                ),
                Icon(IconlyLight.arrow_right_2,
                    color: Color(0xff48CFCB)), // Teal color
              ],
            ),
            const SizedBox(height: 20),
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
                                  color:
                                      const Color(0xff48CFCB)), // Teal border
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                image: AssetImage(activity),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          Text(
                            day,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff424242), // Dark grey
                            ),
                          )
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

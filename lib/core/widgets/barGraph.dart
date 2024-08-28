import 'package:fitness_tracker_ui/core/utils/barData/barData.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraphWidget extends StatelessWidget {
  final List summary;
  const BarGraphWidget({
    super.key,
    required this.summary,
  });

  @override
  Widget build(BuildContext context) {
    BarDataDetails barDataDetails = BarDataDetails(
      sun: summary[0],
      mon: summary[1],
      tues: summary[2],
      wed: summary[3],
      thus: summary[4],
      fri: summary[5],
      sat: summary[6],
    );

    barDataDetails.initializData();

    return BarChart(
      BarChartData(
        maxY: 100,
        minY: 0,
        titlesData: const FlTitlesData(
          show: true,
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: getbottomTitle,
            ),
          ),
        ),
        gridData: const FlGridData(
          show: false,
        ),
        barGroups: barDataDetails.dataList
            .asMap()
            .entries
            .map(
              (entry) => BarChartGroupData(
                x: entry.key, // Use the index as the 'x' value
                barRods: [
                  BarChartRodData(
                    toY: entry.value.y,
                    width: 35,
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(1),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}

Widget getbottomTitle(
  double value,
  TitleMeta meta,
) {
  const style = TextStyle(
    color: Colors.grey,
    fontSize: 10,
    fontWeight: FontWeight.bold,
  );
  Widget text;

  switch (value.toInt()) {
    case 0:
      text = const Text(
        'SUN',
        style: style,
      );
      break;
    case 1:
      text = const Text(
        'MON',
        style: style,
      );
      break;
    case 2:
      text = const Text(
        'TUES',
        style: style,
      );
      break;
    case 3:
      text = const Text(
        'WED',
        style: style,
      );
      break;
    case 4:
      text = const Text(
        'THUS',
        style: style,
      );
      break;
    case 5:
      text = const Text(
        'FRI',
        style: style,
      );
      break;
    case 6:
      text = const Text(
        'SAT',
        style: style,
      );
      break;
    default:
      text = const Text(
        '',
        style: style,
      );
      break;
  }
  return SideTitleWidget(axisSide: meta.axisSide, child: text);
}

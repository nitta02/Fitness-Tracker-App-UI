import 'package:fitness_tracker_ui/core/utils/barData/barDataClass.dart';

class BarDataDetails {
  final double sun;
  final double mon;
  final double tues;
  final double wed;
  final double thus;
  final double fri;
  final double sat;

  BarDataDetails(
      {required this.sun,
      required this.mon,
      required this.tues,
      required this.wed,
      required this.thus,
      required this.fri,
      required this.sat});

  List<BarData> dataList = [];

  void initializData() {
    dataList = [
      BarData(x: 05, y: sun),
      BarData(x: 10, y: mon),
      BarData(x: 20, y: tues),
      BarData(x: 30, y: wed),
      BarData(x: 40, y: thus),
      BarData(x: 50, y: fri),
      BarData(x: 60, y: sat),
    ];
  }
}

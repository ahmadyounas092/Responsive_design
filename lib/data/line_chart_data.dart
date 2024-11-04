import 'package:fl_chart/fl_chart.dart';

class LineData {
  final spots = const [
    FlSpot(1.68, 21.04),
    FlSpot(2.84, 26.23),
    FlSpot(3.71, 28.03),
    FlSpot(4.44, 32.35),
    FlSpot(5.47, 41.21),
    FlSpot(6.91, 51.52),
    FlSpot(7.03, 58.29),
    FlSpot(8.14, 62.57),
    FlSpot(9.64, 68.97),
    FlSpot(10.52, 71.82),
    FlSpot(12.65, 75.16),
    FlSpot(19.63, 81.06),
    FlSpot(20.67, 84.42),
    FlSpot(27.27, 89.93),
    FlSpot(30.92, 93.51),
    FlSpot(35.00, 91.23),
    FlSpot(41.78, 84.02),
    FlSpot(49.56, 78.00),
    FlSpot(53.09, 71.76),
    FlSpot(57.24, 67.89),
    FlSpot(62.31, 63.38),
    FlSpot(67.54, 59.17),
    FlSpot(70.59, 50.61),
    FlSpot(73.33, 46.36),
    FlSpot(80.95, 39.02),
    FlSpot(86.82, 32.30),
    FlSpot(91.25, 23.67),
  ];
  final leftTitle = {
    0: "0",
    20: "2k",
    40: "4k",
    60: "6k",
    80: "8k",
    100: "10k"
  };
  final bottomTitle = {
    0: "Jan",
    10: "Feb",
    20: "Mar",
    30: "Apr",
    40: "May",
    50: "Jun",
    60: "Jul",
    70: "Aug",
    80: "Sep",
    90: "Oct",
    100: "Nov",
    110: "Dec",
  };
}

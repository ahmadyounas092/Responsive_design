import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_design/data/line_chart_data.dart';
import 'package:responsive_design/utils/constant.dart';
import 'package:responsive_design/widgets/custom_card_widget.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();
    return CustomCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Steps Overview",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 20),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                lineTouchData: const LineTouchData(handleBuiltInTouches: true),
                gridData: const FlGridData(show: false),
                titlesData: FlTitlesData(
                  rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        int index = value.toInt();
                        return data.bottomTitle[index] != null
                            ? SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  data.bottomTitle[index].toString(),
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 12),
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        int index = value.toInt();
                        return data.leftTitle[index] != null
                            ? SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(data.leftTitle[index].toString()),
                              )
                            : const SizedBox();
                      },
                      interval: 1,
                      reservedSize: 40,
                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    color: selectionColor,
                    barWidth: 2.5,
                    belowBarData: BarAreaData(
                        gradient: LinearGradient(
                            colors: [
                              selectionColor.withOpacity(0.5),
                              Colors.transparent
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        show: true),
                    dotData: FlDotData(show: false),
                    spots: data.spots,
                  ),
                ],
                minX: 0,
                maxX: 120,
                maxY: 105,
                minY: -5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

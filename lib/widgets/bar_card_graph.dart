import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_design/data/bar_graph_data.dart';
import 'package:responsive_design/model/graph_model.dart';
import 'package:responsive_design/widgets/custom_card_widget.dart';

class BarCardGraph extends StatelessWidget {
  const BarCardGraph({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BarGraphData();

    return Container(
      height: 300, // Set a fixed height for the grid
      child: GridView.builder(
        itemCount: barGraphData.data.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(), // Disable scrolling
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 12,
          childAspectRatio: 5 / 4,
        ),
        itemBuilder: (context, index) {
          return CustomCardWidget(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    barGraphData.data[index].label,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: BarChart(
                    BarChartData(
                      barGroups: _chartGroups(
                        color: barGraphData.data[index].color,
                        points: barGraphData.data[index].graph,
                      ),
                      borderData: FlBorderData(border: const Border()),
                      gridData: const FlGridData(show: false),
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, meta) {
                              int idx = value.toInt();
                              return Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  barGraphData.label[idx],
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        leftTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        topTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        rightTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  List<BarChartGroupData> _chartGroups({
    required List<GraphModel> points,
    required Color color,
  }) {
    return points
        .map((point) => BarChartGroupData(
              x: point.x.toInt(),
              barRods: [
                BarChartRodData(
                  toY: point.y,
                  width: 12,
                  color: color.withOpacity(point.y.toInt() > 4 ? 1 : 0.4),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(3.0),
                    topRight: Radius.circular(3.0),
                  ),
                ),
              ],
            ))
        .toList();
  }
}

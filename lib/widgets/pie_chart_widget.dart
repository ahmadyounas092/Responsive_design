import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_design/data/pie_chart_data.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartdata = PieData();
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartdata.paeChartSelectionDatas)),
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "80%",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    height: 0.5),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text("of 100%"),
            ],
          ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_design/utils/constant.dart';
import 'package:responsive_design/widgets/pie_chart_widget.dart';
import 'package:responsive_design/widgets/scheduled_widget.dart';
import 'package:responsive_design/widgets/summary_details_widget.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: const Column(
        children: [
          SizedBox(
            height: 12.5,
          ),
          PieChartWidget(),
          Text(
            "Summary",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 16,
          ),
          SummaryDetailsWidget(),
          SizedBox(
            height: 40,
          ),
          ScheduledWidget(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_design/utils/responsive.dart';
import 'package:responsive_design/widgets/activity_card_widget.dart';
import 'package:responsive_design/widgets/bar_card_graph.dart';
import 'package:responsive_design/widgets/header_widget.dart';
import 'package:responsive_design/widgets/line_chart_card.dart';
import 'package:responsive_design/widgets/summary_widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 18,
        ),
        const HeaderWidget(),
        const SizedBox(
          height: 18,
        ),
        const ActivityCardWidget(),
        const SizedBox(
          height: 18,
        ),
        const LineChartCard(),
        const SizedBox(
          height: 18,
        ),
        const BarCardGraph(),
        const SizedBox(
          height: 18,
        ),
        if (Responsive.isTablet(context)) const SummaryWidget(),
        const SizedBox(
          height: 18,
        ),
      ],
    );
  }
}

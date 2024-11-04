import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_design/utils/constant.dart';

class PieData {
  final paeChartSelectionDatas = [
    PieChartSectionData(
        color: primaryColor, value: 25, showTitle: false, radius: 25),
    PieChartSectionData(
        color: const Color(0xff26e5ff),
        value: 25,
        showTitle: false,
        radius: 25),
    PieChartSectionData(
        color: const Color(0xfffffcf26),
        value: 25,
        showTitle: false,
        radius: 25),
    PieChartSectionData(
        color: const Color(0xffee2727),
        value: 25,
        showTitle: false,
        radius: 25),
    PieChartSectionData(
        color: primaryColor.withOpacity(0.1),
        value: 25,
        showTitle: false,
        radius: 25),
  ];
}

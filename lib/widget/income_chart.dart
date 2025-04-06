import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});
  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          color: const Color(0xFF4CAF50),
          value: 40,
          title: '40%',
          radius: 40,
        ),
        PieChartSectionData(
          showTitle: false,
          color: const Color(0xFF2196F3),
          value: 25,
          title: '25%',
          radius: 40,
        ),
        PieChartSectionData(
          showTitle: false,
          color: const Color(0xFFFF9800),
          value: 20,
          title: '20%',
          radius: 40,
        ),
        PieChartSectionData(
          showTitle: false,
          color: const Color(0xFFF44336),
          value: 22,
          title: '22%',
          radius: 40,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }
}

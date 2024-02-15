import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/dataProvider.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({super.key});

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    DataProvider dataProvider = Provider.of<DataProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("chart"),
      ),
      body: Center(
        child: Column(
          children: [
            LineChart(
              LineChartData(
                lineBarsData: [
                  LineChartBarData(
                    spots: dataProvider.data
                        .map((point) => FlSpot(point[0], point[1]))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

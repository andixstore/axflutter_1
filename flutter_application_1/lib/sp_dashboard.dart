import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dashboard',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: LineChart(
                LineChartData(
                  lineTouchData: LineTouchData(enabled: false),
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(
                    show: true,
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  minX: 0,
                  maxX: 5,
                  minY: 0,
                  maxY: 10,
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 5),
                        FlSpot(1, 8),
                        FlSpot(2, 3),
                        FlSpot(3, 6),
                        FlSpot(4, 4),
                        FlSpot(5, 9),
                      ],
                      isCurved: true,
                      barWidth: 2,
                      dotData: FlDotData(show: false),
                      belowBarData: BarAreaData(
                        show: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

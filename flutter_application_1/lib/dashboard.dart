import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'chart_data.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pop(context); // Menutup navigation pane
              },
            ),
            ListTile(
              title: Text('Profil'),
              onTap: () {
                Navigator.pop(context); // Menutup navigation pane
                // Navigasi ke halaman profil
                Navigator.pushNamed(context, '/profile');
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Grafik',
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
                    bottomTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 22,
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      getTitles: (value) {
                        return chartData[value.toInt()].month;
                      },
                      margin: 8,
                    ),
                    leftTitles: SideTitles(
                      showTitles: true,
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      getTitles: (value) {
                        if (value % 50 == 0) {
                          return value.toString();
                        }
                        return '';
                      },
                      margin: 12,
                    ),
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
                  maxY: 150,
                  lineBarsData: [
                    LineChartBarData(
                      spots: chartData
                          .map(
                            (data) => FlSpot(
                              data.monthIndex.toDouble(),
                              data.sales.toDouble(),
                            ),
                          )
                          .toList(),
                      isCurved: true,
                      colors: [Colors.blue],
                      barWidth: 2,
                      dotData: FlDotData(show: false),
                      belowBarData: BarAreaData(
                        show: true,
                        colors: [Colors.blue.withOpacity(0.2)],
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

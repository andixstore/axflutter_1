import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FL Chart Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChartPage(),
    );
  }
}

class ChartPage extends StatefulWidget {
  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  List<PieChartSectionData> pieChartData = [
    PieChartSectionData(
      color: Colors.red,
      value: 30,
      title: '30%',
      radius: 150,
      titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
    PieChartSectionData(
      color: Colors.green,
      value: 20,
      title: '20%',
      radius: 150,
      titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
    PieChartSectionData(
      color: Colors.blue,
      value: 50,
      title: '50%',
      radius: 150,
      titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FL Chart Example'),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 1.3,
          child: PieChart(
            PieChartData(
              sections: pieChartData,
              centerSpaceRadius: 10,
            ),
          ),
        ),
      ),
    );
  }
}

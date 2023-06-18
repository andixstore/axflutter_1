import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(const MyApp());
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
      home: const ChartPage(),
    );
  }
}

class ChartPage extends StatefulWidget {
  const ChartPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  List<PieChartSectionData> pieChartData = [
    PieChartSectionData(
      color: Colors.red,
      value: 30,
      title: '30%',
      radius: 150,
      titleStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
    PieChartSectionData(
      color: Colors.green,
      value: 20,
      title: '20%',
      radius: 150,
      titleStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
    PieChartSectionData(
      color: Colors.blue,
      value: 50,
      title: '50%',
      radius: 150,
      titleStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FL Chart Example'),
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
// test
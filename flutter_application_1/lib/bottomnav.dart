import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(const MyApp());
//   runApp(BottomNavigationApp());
}

// class BottomNavigationApp extends StatelessWidget {
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavigationPage(),
    );
  }
}

class BottomNavigationPage extends StatefulWidget {
  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.green),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.red),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
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
      // child: Text(
      //   'Halaman utama',
      //   style: TextStyle(fontSize: 24),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.black,
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
    // return Center(
    // child: Text(
    // 'Halaman utama',
    // style: TextStyle(fontSize: 24),
    // ),
    // );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Search Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Favorites Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

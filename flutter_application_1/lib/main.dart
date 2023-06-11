import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard Monitoring',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/dashboard',
      // Halaman awal
      routes: {
        '/dashboard': (context) => DashboardPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}

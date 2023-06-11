import 'package:flutter/material.dart';
import 'sp_splash_screen.dart';
import 'sp_dashboard.dart';
import 'sp_profile.dart';

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
      initialRoute: '/splash', // Mengatur rute awal ke SplashScreen
      routes: {
        '/splash': (context) => SplashScreen(), // Menambahkan rute SplashScreen
        '/dashboard': (context) => DashboardPage(),
        '/home': (context) => DashboardPage(), // Menambahkan rute halaman utama
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}

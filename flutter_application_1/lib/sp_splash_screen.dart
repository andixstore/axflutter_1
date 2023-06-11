import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'sp_dashboard.dart';
// import 'sp_profile.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  Future<void> _navigateToLogin() async {
    await Future.delayed(Duration(seconds: 3)); // Menunda selama 5 detik
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => LoginPage()), // Navigasi ke halaman login
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.blue, // Ganti dengan warna latar belakang yang diinginkan
      body: Center(
        child: SpinKitChasingDots(
          color: Colors.white, // Ganti dengan warna animasi yang diinginkan
          size: 50.0, // Ganti dengan ukuran animasi yang diinginkan
        ),
      ),
    );
  }
}

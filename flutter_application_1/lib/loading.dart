import 'package:flutter/material.dart';

void main() {
  runApp(LoadingScreenApp());
}

class LoadingScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loading Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoadingScreenPage(),
    );
  }
}

class LoadingScreenPage extends StatefulWidget {
  @override
  _LoadingScreenPageState createState() => _LoadingScreenPageState();
}

class _LoadingScreenPageState extends State<LoadingScreenPage> {
  @override
  void initState() {
    super.initState();
    // Simulasikan waktu loading
    Future.delayed(Duration(seconds: 3), () {
      // Setelah 3 detik, pindah ke halaman berikutnya
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text(
          'Welcome to Home Screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

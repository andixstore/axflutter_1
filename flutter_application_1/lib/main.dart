import 'package:flutter/material.dart';
// import 'package:flutter_web/material.dart';
// import 'package:flutter_web_ui/ui.dart' as web_ui;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Web Demo'),
      ),
      body: Center(
        child: Text(
          'Welcome to Flutter Web!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

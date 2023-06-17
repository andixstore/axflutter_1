import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // bool isMobile = true; // Ganti dengan kondisi yang sesuai

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conditional AppBar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth >= 600 && kIsWeb) {
            // ===================================
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WEB Layout',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 20),
                    Image.asset(
                      'assets/web.png',
                      height: 200,
                    ),
                  ],
                ),
              ),
            );
            // ===================================
          } else {
            // ===================================
            return Scaffold(
              appBar: AppBar(
                title: Text('Mobile AppBar'),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Mobile Layout',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 20),
                    Image.asset(
                      'assets/mobile.png',
                      height: 200,
                    ),
                  ],
                ),
              ),
            );
            // ===================================
          }
        },
      ),
    );
  }
}

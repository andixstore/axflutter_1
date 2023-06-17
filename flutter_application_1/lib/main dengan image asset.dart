import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Company Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CompanyProfilePage(),
    );
  }
}

class CompanyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Company Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Image.asset(
              'assets/stop_tr.png',
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Our Company',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('About Us'),
              onTap: () {
                // TODO: Implement about us page
              },
            ),
            ListTile(
              leading: Icon(Icons.business),
              title: Text('Services'),
              onTap: () {
                // TODO: Implement services page
              },
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Projects'),
              onTap: () {
                // TODO: Implement projects page
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Contact Us'),
              onTap: () {
                // TODO: Implement contact us page
              },
            ),
          ],
        ),
      ),
    );
  }
}

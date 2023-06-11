import 'package:flutter/material.dart';

void main() {
  runApp(NavigationPaneApp());
}

class NavigationPaneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Pane',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavigationPanePage(),
    );
  }
}

class NavigationPanePage extends StatefulWidget {
  @override
  _NavigationPanePageState createState() => _NavigationPanePageState();
}

class _NavigationPanePageState extends State<NavigationPanePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context); // Menutup navigation pane setelah item dipilih
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Pane'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              selected: _selectedIndex == 0,
              onTap: () => _onItemSelected(0),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
              selected: _selectedIndex == 1,
              onTap: () => _onItemSelected(1),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              selected: _selectedIndex == 2,
              onTap: () => _onItemSelected(2),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white, // Ubah warna latar belakang
      body: _pages[_selectedIndex],
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home',
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
        'Favorites',
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
        'Profile',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

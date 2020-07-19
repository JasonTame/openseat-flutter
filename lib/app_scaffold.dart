import 'package:flutter/material.dart';

import 'widgets/app_drawer.dart';

import 'screens/find_meal_screen.dart';
import 'screens/host_meal_screen.dart';
import 'screens/profile_screen.dart';

class AppScaffold extends StatefulWidget {
  @override
  _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  void initState() {
    _pages = [
      {
        'page': FindMealScreen(),
      },
      {
        'page': HostMealScreen(),
      },
      {
        'page': ProfileScreen(),
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      appBar: AppBar(
        // Removes automatic drawer icon
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black87,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/images/logo_white.png',
              fit: BoxFit.cover,
              height: 35.0,
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () => {
              _drawerKey.currentState.openDrawer(),
            },
          )
        ],
      ),
      drawer: AppDrawer(),
      drawerEnableOpenDragGesture: false,
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.search),
            title: Text('Find a meal'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.room_service),
            title: Text('Host a meal'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.person),
            title: Text('View profile'),
          ),
        ],
      ),
    );
  }
}

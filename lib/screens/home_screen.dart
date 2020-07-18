import 'package:flutter/material.dart';

import '../screens/app_drawer.dart';
import '../widgets/meal_card.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

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
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Text(
                'Have a meal, make some friends!',
                style: TextStyle(fontSize: 28.0, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
            ),
            MealCard()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Host a meal'),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search), title: Text('Find a meal'))
      ]),
    );
  }
}

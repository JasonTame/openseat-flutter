import 'package:flutter/material.dart';

import '../widgets/meal_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            onPressed: () => {},
          )
        ],
      ),
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

import 'package:flutter/material.dart';

import '../screens/app_scaffold.dart';
import '../widgets/meal_card.dart';

class HomeScreen extends StatelessWidget {
  final Widget body = Container(
    child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: Text(
            'Have a meal, make some friends!',
            style: TextStyle(fontSize: 28.0, color: Colors.black54),
            textAlign: TextAlign.center,
          ),
        ),
        MealCard()
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return AppScaffold(body);
  }
}

import 'package:flutter/material.dart';

import '../widgets/meal_card.dart';

class FindMealScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
    ;
  }
}

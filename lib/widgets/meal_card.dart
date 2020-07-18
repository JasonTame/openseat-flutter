import 'package:flutter/material.dart';

import '../widgets/meal_card_header.dart';
import '../widgets/meal_card_user_info.dart';
import '../widgets/meal_card_description.dart';

class MealCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            MealCardHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: MealCardUserInfo(),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: MealCardDescription()),
          ],
        ),
      ),
    );
  }
}

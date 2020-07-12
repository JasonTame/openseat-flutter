import 'package:flutter/material.dart';

class MealCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[Text('Event name'), Text('18 Jul')],
            ),
          ),
        ],
      ),
    );
  }
}

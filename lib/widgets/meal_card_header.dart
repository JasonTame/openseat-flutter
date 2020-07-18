import 'package:flutter/material.dart';

class MealCardHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black54, width: 3.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          children: <Widget>[
            Expanded(child: Text('Bobotie Fun!')),
            Text('18 Jul')
          ],
        ),
      ),
    );
  }
}

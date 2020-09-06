import 'package:flutter/material.dart';

import '../widgets/event_carousel.dart';

class FindEventScreen extends StatelessWidget {
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
          Expanded(
            child: Container(
              child: EventCarousel(),
            ),
          )
        ],
      ),
    );
  }
}

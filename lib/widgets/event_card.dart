import 'package:flutter/material.dart';

import 'event_card_header.dart';
import 'event_card_user_info.dart';
import 'event_card_description.dart';

class EventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            EventCardHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: EventCardUserInfo(),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: EventCardDescription()),
          ],
        ),
      ),
    );
  }
}

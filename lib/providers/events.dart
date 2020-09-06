import 'package:flutter/material.dart';

import '../models/event.dart';

class Events with ChangeNotifier {
  List<Event> _events = [];

  List<Event> get events {
    return [..._events];
  }

  void addEvent() {
    //TODO: Add method for adding new events
    notifyListeners();
  }
}

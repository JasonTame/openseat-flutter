import 'package:flutter/material.dart';

import '../models/event.dart';

class Events with ChangeNotifier {
  List<Event> _events = [];

  List<Event> get events {
    return [..._events];
  }

  Event findById(String id) {
    return _events.firstWhere((event) => event.id == id);
  }

  void addEvent() {
    //TODO: Add method for adding new events
    notifyListeners();
  }
}

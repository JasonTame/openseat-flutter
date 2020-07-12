import 'package:flutter/foundation.dart';

class Meal {
  final String id;
  final String title;
  final DateTime dateTime;
  final String description;
  final double price;
  final String hostName;
  final String hostLocation;

  Meal(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.dateTime,
      this.price,
      @required this.hostName,
      @required this.hostLocation});
}

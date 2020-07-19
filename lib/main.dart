import 'package:flutter/material.dart';

import 'app_scaffold.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Seat',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.amber,
      ),
      home: AppScaffold(),
      routes: {},
    );
  }
}

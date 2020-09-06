import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_scaffold.dart';

import './providers/events.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Events(),
      child: MaterialApp(
        title: 'Open Seat',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          accentColor: Colors.amber,
        ),
        home: AppScaffold(),
        routes: {},
      ),
    );
  }
}

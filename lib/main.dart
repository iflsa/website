import 'package:flutter/material.dart';

import 'package:website/screens/MainScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ratajczyk.me',
        theme: ThemeData(
          fontFamily: 'Raleway-Light',
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (ctx) => MainScreen(),
        });
  }
}

import 'package:flutter/material.dart';
import 'package:secret_blind_date/landing_page.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secret Blind Date',
      home: LandingPageUi(),
    );
  }
}

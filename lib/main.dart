import 'package:flutter/material.dart';
import 'package:motivation_app/routes/QuoteRoute.dart';
import 'package:motivation_app/routes/initialRoute.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Initial()),
      debugShowCheckedModeBanner: false,
    );
  }
}

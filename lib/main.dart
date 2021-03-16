import 'package:flutter/material.dart';
import 'package:motivation_app/routes/loading.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFbbf1fa),
        body: Loading(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(child: Image.asset('assets/images/ogi.png')),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Made with ❤ by Ogi",
          style: TextStyle(fontSize: 24),
        ),
      )
    ]);
  }
}

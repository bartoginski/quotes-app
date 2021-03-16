import 'dart:math';

import 'package:flutter/material.dart';
import 'package:motivation_app/models/Quote.dart';

class QuoteRoute extends StatefulWidget {
  @override
  _QuoteRouteState createState() => _QuoteRouteState();
}

class _QuoteRouteState extends State<QuoteRoute> {
  final List<Quote> quotes = [
    Quote(
        'Any fool can write code that a computer can understand. Good programmers write code that humans can understand.',
        'Martin Fowler'),
    Quote('First, solve the problem. Then, write the code.', 'John Johnson'),
    Quote('Experience is the name everyone gives to their mistakes.',
        'Oscar Wilde'),
    Quote('In order to be irreplaceable, one must always be different',
        'Coco Chanel'),
  ];

  int actualIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(child: Text('"${quotes[actualIndex].quote}"')),
            Container(
              child: Text(
                '~${quotes[actualIndex].author}',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Random random = new Random();
                  int randomNumber = random.nextInt(quotes.length);
                  actualIndex = randomNumber;
                });
              },
              child: Text("New Quote"),
            )
          ],
        ),
      ),
    );
  }
}

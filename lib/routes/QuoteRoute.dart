import 'dart:math';

import 'package:flutter/material.dart';
import 'package:motivation_app/models/QuotesList.dart';

class QuoteRoute extends StatefulWidget {
  @override
  _QuoteRouteState createState() => _QuoteRouteState();
}

class _QuoteRouteState extends State<QuoteRoute> {
  int actualIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // quote text
              Container(
                  child: Text(
                '"${quotes[actualIndex].quote}"',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              )),
              // quote author
              Container(
                child: Text(
                  '~${quotes[actualIndex].author}',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red)),
                onPressed: () {
                  setState(() {
                    // generates random index n < quotes.length
                    // and sets actual index of quotes to randomNumber
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
      ),
    );
  }
}

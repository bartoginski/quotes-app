import 'package:flutter/material.dart';
import 'package:motivation_app/routes/QuoteRoute.dart';

class Initial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    child: Image.asset(
                  'assets/images/ogi.png',
                  height: 70,
                )),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Press anywhere to continue...',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                )
              ]),
        ),
      ),
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => QuoteRoute()));
      },
    );
  }
}

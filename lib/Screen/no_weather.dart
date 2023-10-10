import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child :Text(
        "NO WEATHER HERE 😢🔎",
        style: TextStyle(fontSize:  25 , fontWeight: FontWeight.bold),
),
      ),
    );
  }
}
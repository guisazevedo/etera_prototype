import 'dart:async';
import 'package:flutter/material.dart';
import 'widgets.dart';
import 'package:etera_prototype/screens/screen_signin.dart';

void main() {
  runApp(const eTERA());
}

// ignore: camel_case_types
class eTERA extends StatelessWidget {
  const eTERA({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                AnimatedEntry(
                    text_1: 'eTERA', text_2: 'Sua saúde em primeiro lugar!'),
              ]),
        ),
      ),
    );
  }
}

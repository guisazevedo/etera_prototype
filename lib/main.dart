import 'package:flutter/material.dart';
import 'package:etera_prototype/screens/screen_flash_entry.dart';

// todo => improve THEME & refactor other files

void main() {
  runApp(const eTera());
}

// ignore: camel_case_types
class eTera extends StatelessWidget {
  const eTera({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
          body: Center(
        child: RelaxingScreen(),
      )),
    );
  }
}

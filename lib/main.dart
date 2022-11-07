import 'package:flutter/material.dart';
import 'package:etera_prototype/screens/start/screen_flash_entry.dart';

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
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.grey.shade100),
        scaffoldBackgroundColor: Colors.grey.shade100,
        backgroundColor: Colors.grey.shade100,
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
          body: Center(
        child: RelaxingScreen(),
      )),
    );
  }
}

import 'package:etera_prototype/screens/start/screen_sign_in.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:etera_prototype/widgets.dart';
import 'package:page_transition/page_transition.dart';

class RelaxingScreen extends StatefulWidget {
  const RelaxingScreen({Key? key}) : super(key: key);

  @override
  State<RelaxingScreen> createState() => _RelaxingScreenState();
}

class _RelaxingScreenState extends State<RelaxingScreen> {
  // declaring a timer
  Timer? timer;

  @override
  void initState() {
    super.initState();

    // initialize timer for 5 seconds
    timer = Timer(
      const Duration(seconds: 10),
      () {
        // Navigating to SignIn screen with counter is executed
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft, child: const SignIn()));
      },
    );
  }

  // canceling the timer when widget is disposed
  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          AnimatedEntry(
              text_1: 'Your health in first place',
              text_2: 'RIGHT NOW!',
              text_3: 'eTERA'),
        ],
      ),
    );
  }
}

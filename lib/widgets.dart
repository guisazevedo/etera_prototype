import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:etera_prototype/constants.dart';

// Animated text on app entry
class AnimatedEntry extends StatelessWidget {
  const AnimatedEntry(
      {super.key,
      required this.text_1,
      required this.text_2,
      required this.text_3});

  final String text_1;
  final String text_2;
  final String text_3;

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        FadeAnimatedText(text_1,
            textStyle: kTextStyleEntry, duration: const Duration(seconds: 2)),
        FadeAnimatedText(text_2,
            textStyle: kTextStyleEntry, duration: const Duration(seconds: 2)),
        TypewriterAnimatedText(text_3,
            textStyle: kTextStyleEntry.copyWith(fontSize: 60),
            speed: const Duration(milliseconds: 200),
            cursor: '_'),
      ],
      totalRepeatCount: 1,
    );
  }
}

// Partnership widgets
class PartnershipItems extends StatelessWidget {
  const PartnershipItems({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
        child: Text(text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )));
  }
}

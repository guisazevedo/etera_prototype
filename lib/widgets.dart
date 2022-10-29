import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:etera_prototype/constants.dart';

// Animated text on app entry
class AnimatedEntry extends StatelessWidget {
  const AnimatedEntry({super.key, required this.text_1, required this.text_2});

  final String text_1;
  final String text_2;

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(text_1,
            textStyle: kTextStyleEntry,
            speed: const Duration(milliseconds: 100),
            cursor: '_'),
        TypewriterAnimatedText(text_2,
            textStyle: kTextStyleEntry,
            speed: const Duration(milliseconds: 100),
            cursor: '_'),
      ],
      totalRepeatCount: 1,
    );
  }
}

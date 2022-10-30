import 'package:etera_prototype/screens/screen_terms_conditions.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:etera_prototype/constants.dart';
import 'package:page_transition/page_transition.dart';
import 'package:etera_prototype/screens/screen_home.dart';

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

// Options Menu for home screen
class OptionsMenu extends StatelessWidget {
  const OptionsMenu({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: SizedBox(
        width: 120,
        height: 120,
        child: ElevatedButton.icon(
          style: const ButtonStyle(
              elevation: MaterialStatePropertyAll(10),
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
          onPressed: () {},
          icon: Icon(
            // <-- Icon
            icon,
            color: Colors.black,
            size: 24.0,
          ),
          label: Text(
            text,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ), // <-- Text
        ),
      ),
    );
  }
}

// Terms and Conditions alert for joining
class TermsConditionsAlert extends StatelessWidget {
  const TermsConditionsAlert({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Terms & Conditions"),
      content: const Text("Do you agree with eTERA's terms & conditions?"),
      actions: <Widget>[
        Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: const Center(
                    child: Text(
                  "YES",
                  textAlign: TextAlign.center,
                )),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: const Home()));
                },
              ),
              const SizedBox(width: 10),
              TextButton(
                child: const Center(
                    child: Text(
                  "NO",
                  textAlign: TextAlign.center,
                )),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              const SizedBox(width: 10),
              TextButton(
                child: const Center(
                    child: Text(
                  "Terms &\nConditions",
                  textAlign: TextAlign.center,
                )),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: const TermsConditions()));
                },
              ),
            ])
      ],
    );
  }
}

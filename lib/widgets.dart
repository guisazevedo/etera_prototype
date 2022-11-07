import 'package:etera_prototype/screens/screen_terms_conditions.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:etera_prototype/constants.dart';
import 'package:page_transition/page_transition.dart';
import 'package:etera_prototype/screens/home/screen_home.dart';

// Animated text on app entry
class AnimatedEntry extends StatelessWidget {
  const AnimatedEntry({
    super.key,
    required this.text_1,
    required this.text_2,
    required this.text_3,
  });

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
class PartnerItems extends StatelessWidget {
  const PartnerItems({super.key, required this.text});

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

// Option menu
class OptionsHomeMenu extends StatelessWidget {
  const OptionsHomeMenu(
      {super.key,
      required this.icon,
      required this.text,
      required this.direction});

  final IconData icon;
  final String text;
  final Widget direction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: 120,
        height: 120,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shadowColor: Colors.grey,
              elevation: 5),
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeft, child: direction));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.black),
              const SizedBox(height: 5),
              Text(
                text,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
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

// Open banking => please follow instructions at your bank
class FollowOpenBankingAlert extends StatelessWidget {
  const FollowOpenBankingAlert({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Open Banking"),
      content: const Text(
          "You will be directed to the selected bank.\n\nPlease follow the authorization instructions there to complete the process."),
      actions: <Widget>[
        Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: const Center(
                    child: Text(
                  "OK",
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
            ])
      ],
    );
  }
}

// Terms and Conditions alert for joining
class SponsorAlert extends StatelessWidget {
  const SponsorAlert({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Sponsor selected"),
      content: const Text(
          "Great, we will take it from here! \n\nYou will hear from us when your sponsor approves it."),
      actions: <Widget>[
        Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: const Center(
                    child: Text(
                  "OK",
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
            ])
      ],
    );
  }
}

// Custom BottomAppBar
class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar(
      {super.key,
      required this.text,
      required this.icon1,
      required this.icon2,
      required this.icon3,
      required this.icon4});

  final String text;
  final String icon1;
  final String icon2;
  final String icon3;
  final String icon4;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.grey.shade100,
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                './images/$icon1.png',
                height: 50,
                width: 50,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(width: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                './images/$icon2.png',
                height: 50,
                width: 50,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(width: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                './images/$icon3.png',
                height: 50,
                width: 50,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(width: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                './images/$icon4.png',
                height: 50,
                width: 50,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Pix account info
class TitleValue extends StatelessWidget {
  const TitleValue({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 18, color: Colors.black38)),
        Text(
          value,
          style: const TextStyle(fontSize: 20),
        )
      ],
    );
  }
}

// Open Bank Bank Selection
class OpenBankSelection extends StatelessWidget {
  const OpenBankSelection({super.key, required this.bank});

  final String bank;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white)),
        child: SizedBox(
          width: 100,
          child: Text(
            bank,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ));
  }
}

// Screen Headers
class ScreenHeader extends StatelessWidget {
  const ScreenHeader({super.key, required this.title, required this.text});

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 22), //
        Text(
          title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30),
        Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}

// Redeem products
class RedeemProduct extends StatelessWidget {
  const RedeemProduct({
    super.key,
    required this.icon,
    required this.text,
    required this.direction,
  });

  final IconData icon;
  final String text;
  final Widget direction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor: Colors.white,
          elevation: 5,
          shadowColor: Colors.grey,
        ),
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.rightToLeft, child: direction));
        },
        child: Row(
          children: [
            Container(
              width: 50,
              margin: const EdgeInsets.all(20),
              child: Icon(
                icon,
                color: Colors.black,
                size: 40,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                text,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

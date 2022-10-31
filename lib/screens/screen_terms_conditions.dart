import 'package:etera_prototype/screens/screen_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:etera_prototype/constants.dart';
import 'package:page_transition/page_transition.dart';
import 'package:etera_prototype/screens/screen_home.dart';

// todo => log that the person accepted the T&

class TermsConditions extends StatelessWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'eTERA - Terms & Conditions',
            style: TextStyle(color: Colors.black),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: const Text(
                'Terms & Conditions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: const Text(termsConditions),
            ),
            Container(
              alignment: Alignment.centerLeft, // todo => what the hell???
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: const Text(
                'Do you accept the terms and conditions?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: const Home()));
                        },
                        child: const Text('YES'))),
                Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: const SignIn()));
                        },
                        child: const Text(
                          'NO',
                          style: TextStyle(color: Colors.black),
                        )))
              ],
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}

// todo => include terms on scrollable text
// todo => Accept and Don't should be at the bottom => guarantee user scrolled

import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';
import 'package:etera_prototype/constants.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'eTERA - Activate Account',
            style: TextStyle(color: Colors.black),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40.0),
                Image.asset(
                  "images/eTera_logo.png",
                ),
                const SizedBox(height: 60.0),
                const Text('Activate your\naccount',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 16.0),
                TextField(
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: kTextFieldDecoration.copyWith(
                        hintText:
                            'Enter your telephone')), // todo => include checks for valid telephone & "(11)" xxxx xx xx format
                const SizedBox(height: 16.0),
                TextField(
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: kTextFieldDecoration.copyWith(
                        hintText:
                            'Enter your WhatsApp PIN')), // todo => include check for valid PIN
                const SizedBox(
                  height: 8.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to warning "Terms & Conditions"
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const TermsConditionsAlert(); // todo => log that the person accepted the T&C
                      },
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  child: const Text(
                    'Activate account',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(40, 12, 40, 16),
                  child: Divider(
                    thickness: .5,
                    color: Colors.grey,
                  ),
                ),
                const Center(
                  child: Text.rich(TextSpan(
                      text: 'Already a user? ',
                      style: TextStyle(fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                '  Sign up.', // todo => sign up should be a button
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ])),
                ),
                const SizedBox(height: 80),
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    kCopyright,
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                )
              ]),
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(
          text: 'Partners:',
          icon1: 'drc',
          icon2: 'chubb',
          icon3: 'banco_bv',
          icon4: 'drogasil'),
    );
  }
}

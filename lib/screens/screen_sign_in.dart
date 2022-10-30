import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';
import 'package:etera_prototype/constants.dart';
import 'package:page_transition/page_transition.dart';
import 'package:etera_prototype/screens/screen_home.dart';

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
      body: Padding(
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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16.0),
              TextField(
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText:
                          'Enter your telephone')), // todo => include checks for valid telephone
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
                  // Navigating to SignIn screen with counter is executed
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: const Home()));
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
              // todo => include a line
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 12, 10, 16),
                child: Divider(
                  thickness: .5,
                  color: Colors.grey,
                ),
              ),
              const Text.rich(TextSpan(
                  text: 'Already a user? ',
                  style: TextStyle(fontSize: 16),
                  children: <TextSpan>[
                    TextSpan(
                        text: '  Sign up.',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))
                  ])),
              // todo => sign up should be a button and bold
            ]),
      ),
      bottomNavigationBar: BottomAppBar(
        //todo => improve BottomAppBar with logos
        color: Colors.grey.shade100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            PartnershipItems(text: 'Partnerships:'),
            PartnershipItems(text: 'DrC\nlogo'),
            PartnershipItems(text: 'Bank\nlogo'),
            PartnershipItems(text: 'DrugStore\nlogo'),
            PartnershipItems(text: 'Insurance\nlogo')
          ],
        ),
      ), // todo => create widget
    );
  }
}

import 'package:flutter/material.dart';
import 'screen_home.dart';
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("images/eTera_logo.png"),
              const SizedBox(height: 80.0),
              const Text('Activate your\naccount',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16.0),
              TextField(
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your telephone')),
              const SizedBox(height: 16.0),
              TextField(
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your WhatsApp PIN')),
              const SizedBox(
                height: 8.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigating to SignIn screen with counter is executed
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                child: const Text(
                  'Activate',
                  style: TextStyle(fontSize: 18),
                ),
              )
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

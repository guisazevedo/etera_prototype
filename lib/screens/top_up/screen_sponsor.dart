import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';
import 'package:etera_prototype/constants.dart';

class Sponsor extends StatelessWidget {
  const Sponsor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          automaticallyImplyLeading: false,
          title: const Text(
            'eTERA - Sponsor',
            style: TextStyle(color: Colors.black),
          )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ScreenHeader(
              title: 'Select your sponsor',
              text:
                  "We will contact your sponsor and explain how eTERA's program works.\n\n"
                  "You should feel protected already!",
            ),
            // const SizedBox(height: 60),
            const Text(
              'Name:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
                // todo => format inputed value
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Sponsor\'s First Name, Family Name',
                )),
            const SizedBox(height: 16),
            const SizedBox(height: 10),
            const Text(
              'eMail:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
                // todo => format inputed value
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Sponsor\'s email',
                )),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to warning "OpenBanking"
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const SponsorAlert();
                  },
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              child: const Text(
                'Contact sponsor',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 40),
            const SizedBox(
              width: double.infinity,
              child: Text(kCopyright,
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center),
            )
          ],
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

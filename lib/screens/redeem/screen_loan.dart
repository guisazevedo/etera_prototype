import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';
import 'package:etera_prototype/constants.dart';

class Loans extends StatelessWidget {
  const Loans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          automaticallyImplyLeading: false,
          title: const Text(
            'eTERA - Medical loans',
            style: kAppBarStyle,
          )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ScreenHeader(
                title: 'Loans',
                text: 'Let\'s set up the best loan alternative for you.'),
            SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: Text(
                kCopyright,
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
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

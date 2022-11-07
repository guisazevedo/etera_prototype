import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';
import 'package:etera_prototype/constants.dart';

class Pix extends StatelessWidget {
  const Pix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          automaticallyImplyLeading: false,
          title: const Text(
            'eTERA - Pix',
            style: TextStyle(color: Colors.black),
          )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ScreenHeader(
              title: 'Pix transfer into your Health Investment Account (HIA)',
              text:
                  'Investments could be one-off or scheduled monthly at your bank.',
            ),
            // const SizedBox(height: 60), // todo => include PIX logo
            const TitleValue(title: 'Institution', value: '000 - eTERA'),
            const SizedBox(height: 40),
            Row(
              children: const [
                TitleValue(title: 'Branch', value: '1234'),
                SizedBox(width: 120),
                TitleValue(title: 'Account', value: '123456-0')
              ],
            ),
            const SizedBox(height: 40),
            const TitleValue(title: 'CPF', value: '123.456.79-00'),
            const SizedBox(height: 40),
            Row(
              children: const [
                TitleValue(title: 'PIX Key', value: 'A123.B456.C789'),
                SizedBox(width: 10),
                Icon(
                  Icons.content_copy, // todo => make it a button to copy
                  color: Colors.blueGrey,
                )
              ],
            ),
            const SizedBox(height: 120),
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

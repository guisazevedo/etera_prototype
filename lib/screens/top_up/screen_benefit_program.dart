import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:etera_prototype/constants.dart';

class QRCode extends StatelessWidget {
  const QRCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          automaticallyImplyLeading: false,
          title: const Text(
            'eTERA - Benefit programs',
            style: kAppBarStyle,
          )),
      body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ScreenHeader(
                  title: 'Generate a QR Code',
                  text:
                      'Select the value you\'d like the QR Code to charge your benefit program.'),
              const Text(
                'Enter value \nto the invoice:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                  // todo => format inputted value
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  decoration:
                      kTextFieldDecoration.copyWith(hintText: 'R\$ 0.00')),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {}, // todo => generate QR CODE
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                child: const Text(
                  'Generate QR Code',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: QrImage(
                  data: // todo => what to do for more complex data?
                      'Guilherme has super powers!!!',
                  //'Bank XXX, Branch: xxx, Account: xxx, Value: xxx, CPF: xxx, Good until: xxx', // todo => model data generator
                  version: QrVersions.auto,
                  size: 200,
                  gapless: false,
                ),
              ),
              const SizedBox(height: 30),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  kCopyright,
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          )),
      bottomNavigationBar: const CustomBottomAppBar(
          text: 'Partners:',
          icon1: 'drc',
          icon2: 'chubb',
          icon3: 'banco_bv',
          icon4: 'drogasil'),
    );
  }
}

import 'package:etera_prototype/screens/top_up/screen_benefit_program.dart';
import 'package:etera_prototype/screens/top_up/screen_sponsor.dart';
import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';
import 'package:etera_prototype/constants.dart';
//import 'package:etera_prototype/screens/top_up/screen_monthly_payments.dart';
import 'package:etera_prototype/screens/top_up/screen_pix.dart';

class TopUp extends StatelessWidget {
  const TopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          automaticallyImplyLeading: false,
          title: const Text(
            'eTERA - Top up',
            style: TextStyle(color: Colors.black),
          )),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: 80), // todo => Fix size of containers - width
            RedeemProduct(
                logo: 'Pix\nlogo',
                text: 'Easy Pix',
                direction: Pix()), // todo => logos and links
            //RedeemProduct(
            //logo: 'Transfer\nlogo',
            //text: 'Monthly payments',
            //direction: TransferCash()),
            RedeemProduct(
                logo: 'QR Code\nlogo',
                text: 'Benefit programs',
                direction: QRCode()),
            RedeemProduct(
                logo: 'Shake Hands\nlogo',
                text: 'Sponsor:\nThe help you need',
                direction: Sponsor()),
            SizedBox(height: 80),
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

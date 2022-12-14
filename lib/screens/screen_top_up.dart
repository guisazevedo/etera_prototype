import 'package:etera_prototype/screens/top_up/screen_benefit_program.dart';
import 'package:etera_prototype/screens/top_up/screen_sponsor.dart';
import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';
import 'package:etera_prototype/constants.dart';
//import 'package:etera_prototype/screens/top_up/screen_itp.dart';
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
            style: kAppBarStyle,
          )),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            Image.asset(
              "images/eTera_logo.png",
              height: 100,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(height: 20),
            const RedeemProduct(
              icon: Icons.gpp_good_outlined,
              text: 'Easy Pix',
              direction: Pix(),
            ),
            //RedeemProduct(
            //icon: Icons.calendar_month_outlined,
            //text: 'Payment Initiator',
            //direction: TransferCash()),
            const RedeemProduct(
                icon: Icons.qr_code_scanner,
                text: 'Benefit Programs',
                direction: QRCode()),
            const RedeemProduct(
                icon: Icons.handshake_outlined,
                text: 'Sponsor:\nA helping hand',
                direction: Sponsor()),
            const SizedBox(height: 60),
            const SizedBox(
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

import 'package:etera_prototype/screens/top_up/screen_qrcode.dart';
import 'package:etera_prototype/screens/top_up/screen_sponsor.dart';
import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';
import 'package:etera_prototype/constants.dart';
import 'package:etera_prototype/screens/top_up/screen_transfer.dart';
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
            SizedBox(
              height: 60,
            ), // todo => Fix size of containers - width
            RedeemProduct(
                logo: 'Pix\nlogo',
                text: 'Send Pix to your account',
                direction: Pix()), // todo => logos and links
            RedeemProduct(
                logo: 'Transfer\nlogo',
                text: 'Monthly installments',
                direction: TransferCash()),
            RedeemProduct(
                logo: 'QR Code\nlogo',
                text: 'Benefit programs',
                direction: QRCode()),
            RedeemProduct(
                logo: 'Shake Hands\nlogo',
                text: 'Sponsor:\nget the help you need',
                direction: Sponsor()),
            SizedBox(height: 60),
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
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}

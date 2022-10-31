import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';

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
                text:
                    'Your Pix account number:\nxxx.xxx.xxx.xxx'), // todo => logos and links
            RedeemProduct(
                logo: 'Transfer\nlogo',
                text: 'Monthly installments\nimprove this text...'),
            RedeemProduct(logo: 'QR Code\nlogo', text: 'Benefit programs'),
            RedeemProduct(
                logo: 'Shake Hands\nlogo',
                text: 'Sponsor:\nget the help you need'),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}

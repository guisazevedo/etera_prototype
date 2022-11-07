import 'package:etera_prototype/screens/redeem/screen_insurance.dart';
import 'package:etera_prototype/screens/redeem/screen_loan.dart';
import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';
import 'package:etera_prototype/constants.dart';
import 'package:etera_prototype/screens/redeem/screen_consultations.dart';
import 'package:etera_prototype/screens/redeem/screen_exams.dart';
// import 'package:etera_prototype/screens/redeem/screen_yalo.dart';

class RedeemOverall extends StatelessWidget {
  const RedeemOverall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          automaticallyImplyLeading: false,
          title: const Text(
            'eTERA - Redeem',
            style: kAppBarStyle,
          )),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Image.asset(
              "images/eTera_logo.png",
              height: 100,
              fit: BoxFit.fitHeight,
            ),
            const RedeemProduct(
                icon: Icons.medical_services_outlined,
                text: 'Consultations',
                direction: Consultations()),
            const RedeemProduct(
                icon: Icons.biotech_sharp, text: 'Exams', direction: Exams()),
            const RedeemProduct(
                icon: Icons.account_balance_wallet_outlined,
                text: 'Medical Loans',
                direction: Loans()),
            const RedeemProduct(
                icon: Icons.smart_button_outlined,
                text: 'Smart insurance',
                direction: Insurance()),
            const SizedBox(height: 40),
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

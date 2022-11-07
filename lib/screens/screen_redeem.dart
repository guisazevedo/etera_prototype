//import 'package:etera_prototype/screens/redeem/screen_insurance.dart';
import 'package:etera_prototype/screens/redeem/screen_loan.dart';
import 'package:etera_prototype/screens/redeem/screen_surgery.dart';
import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';
import 'package:etera_prototype/constants.dart';
import 'package:etera_prototype/screens/redeem/screen_consultations.dart';
import 'package:etera_prototype/screens/redeem/screen_exams.dart';
// import 'package:etera_prototype/screens/redeem/screen_yalo.dart';
import 'package:etera_prototype/screens/redeem/screen_consultation2.dart';

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
            const SizedBox(height: 60),
            Image.asset(
              "images/eTera_logo.png",
              height: 100,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(height: 20),
            RedeemProduct(
                icon: Icons.medical_services_outlined,
                text: 'Consultations',
                direction: Consultation2()),
            const RedeemProduct(
                icon: Icons.biotech_sharp, text: 'Exams', direction: Exams()),
            const RedeemProduct(
                icon: Icons.emergency_outlined,
                text: 'Surgery',
                direction: Surgery()),
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

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
            style: TextStyle(color: Colors.black),
          )),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: 80),
            RedeemProduct(
                logo: 'DrC\nlogo',
                text: 'Consultations',
                direction: Consultations()),
            RedeemProduct(logo: 'DrC\nlogo', text: 'Exams', direction: Exams()),
            // RedeemProduct( // todo => use or delete it
            //logo: 'Yalo\nlogo', text: 'Card DrConsulta', direction: Yalo()),
            // RedeemProduct(logo: 'Cuidar.me\nlogo', text: 'Healthcare Plans'),
            RedeemProduct(
                logo: 'Bank\nlogo', text: 'Medical loans', direction: Loans()),
            RedeemProduct(
                logo: 'Insurance\nlogo',
                text: 'Custom insurance',
                direction: Insurance()),
            SizedBox(height: 40),
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

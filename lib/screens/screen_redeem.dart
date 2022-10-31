import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';

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
            SizedBox(
              height: 20,
            ), // todo => Fix size of containers
            RedeemProduct(logo: 'DrC\nlogo', text: 'Consultations & Exams'),
            RedeemProduct(logo: 'Yalo\nlogo', text: 'Card DrConsulta'),
            RedeemProduct(logo: 'Cuidar.me\nlogo', text: 'Healthcare Plans'),
            RedeemProduct(logo: 'Bank\nlogo', text: 'Loans: surgeries & exams'),
            RedeemProduct(logo: 'Insurance\nlogo', text: 'Custom insurance'),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';
import 'package:etera_prototype/constants.dart';

class TransferCash extends StatelessWidget {
  const TransferCash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          automaticallyImplyLeading: false,
          title: const Text(
            'eTERA - Monthly payments',
            style: TextStyle(color: Colors.black),
          )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ScreenHeader(
                title:
                    'Monthly transfers into your Health Investment Account (HIA)',
                text: 'Powered by Banco Central\'s Iniciacao de Pagamento.'),
            // const SizedBox(height: 60), // todo => include BC logo
            SizedBox(
                height: 120,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    OpenBankSelection(bank: 'Bank Logo\nItau'),
                    SizedBox(width: 20),
                    OpenBankSelection(bank: 'Bank Logo\nBanco do Brasil'),
                    SizedBox(width: 20),
                    OpenBankSelection(bank: 'Bank Logo\nBradesco'),
                    SizedBox(width: 20),
                    OpenBankSelection(bank: 'Bank Logo\nNu Bank'),
                    SizedBox(width: 20),
                    OpenBankSelection(bank: '+'),
                    SizedBox(width: 20),
                  ],
                )),
            const SizedBox(height: 20),
            //const TitleValue(
            //title: 'Selected bank',
            //value: 'Nu Bank'), // todo => if button works -> erase this TitleValue
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Enter monthly value to be transferred \ninto your HSA:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
                // todo => format inputed value
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration:
                    kTextFieldDecoration.copyWith(hintText: 'R\$ 0.00')),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to warning "OpenBanking"
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const FollowOpenBankingAlert();
                  },
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              child: const Text(
                'Activate transfers',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 40),
            const SizedBox(
              width: double.infinity,
              child: Text(kCopyright,
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center),
            ),
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

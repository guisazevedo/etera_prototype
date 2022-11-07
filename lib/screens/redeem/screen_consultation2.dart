import 'package:flutter/material.dart';
import 'package:etera_prototype/constants.dart';
import 'package:etera_prototype/widgets.dart';

class Consultation2 extends StatefulWidget {
  const Consultation2({Key? key}) : super(key: key);

  @override
  State<Consultation2> createState() => _Consultation2State();
}

class _Consultation2State extends State<Consultation2> {
  String consultationlMode = 'In-person consultation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          automaticallyImplyLeading: false,
          title: const Text(
            'eTERA - Consultations',
            style: kAppBarStyle,
          )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ScreenHeader(
                title: 'Consultation 2',
                text: 'Let\'s set up an appointment for you.'),
            const SizedBox(height: 30),
            Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                child: DropdownButton<String>(
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                    iconSize: 30,
                    elevation: 50,
                    value: consultationlMode,
                    isExpanded: true,
                    items: const [
                      DropdownMenuItem(
                        value: ('In-person consultation'),
                        child: Text('In-person consultation'),
                      ),
                      DropdownMenuItem(
                          value: ('Tele-consultation'),
                          child: Text('Tele-consultation')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        consultationlMode = value!;
                      });
                    })),
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

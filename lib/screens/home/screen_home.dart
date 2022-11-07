import 'package:etera_prototype/screens/screen_top_up.dart';
import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';
import 'package:etera_prototype/screens/screen_redeem.dart';
import 'package:etera_prototype/constants.dart';
import 'package:etera_prototype/screens/screen_tips.dart';
import 'package:etera_prototype/screens/screen_info.dart';

// todo => include msg of benefits -> Drogasil, Bank, etc...
// todo => include flash cards for first time loggin in

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'eTERA - Home',
            style: kAppBarStyle,
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Hello, Maria!',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ), // todo => Maria -> name of user
              const SizedBox(
                height: 20,
              ),
              Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.white),
                  padding: const EdgeInsets.all(20),
                  height: 200,
                  child: const Text.rich(
                    TextSpan(
                      text: 'to be upgraded with Lauren\n\n',
                      style: TextStyle(fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'DOPAMINE',
                          style: TextStyle(
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.center,
                  )),
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      OptionsHomeMenu(
                        icon: Icons.download,
                        text: 'Top up',
                        direction: TopUp(),
                      ),
                      OptionsHomeMenu(
                        icon: Icons.upload,
                        text: 'Redeem',
                        direction: RedeemOverall(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      OptionsHomeMenu(
                        icon: Icons.lightbulb_outline,
                        text: 'Tips',
                        direction: Tips(),
                      ),
                      OptionsHomeMenu(
                          icon: Icons.local_library_outlined,
                          text: 'Info',
                          direction: Info()),
                    ],
                  ),
                ],
              ),
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
      ),
      // backgroundColor: Colors.grey.shade100,
      //bottomNavigationBar: const CustomBottomAppBar(),
      bottomNavigationBar: const CustomBottomAppBar(
        text: 'Partners:',
        icon1: 'drc',
        icon2: 'chubb',
        icon3: 'banco_bv',
        icon4: 'drogasil',
      ),
    );
  }
}

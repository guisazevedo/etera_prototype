import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'eTERA - Home',
            style: TextStyle(color: Colors.black),
          )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Hello, Maria!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.white),
                padding: const EdgeInsets.all(20),
                height: 200,
                child: const Text.rich(
                  TextSpan(
                    text: 'to be upgraded with Lauren/Roberta\n\n',
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
              height: 10,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    OptionsMenu(
                      icon: Icons.download,
                      text: 'Top up',
                    ),
                    OptionsMenu(
                      icon: Icons.upload,
                      text: 'Redeem',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    OptionsMenu(
                      icon: Icons.lightbulb_outline,
                      text: 'Tips',
                    ),
                    OptionsMenu(
                      icon: Icons.local_library_outlined,
                      text: 'Info',
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      // backgroundColor: Colors.grey.shade100,
      bottomNavigationBar: BottomAppBar(
        //todo => improve BottomAppBar with logos
        color: Colors.grey.shade100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            PartnershipItems(text: 'Partnerships:'),
            PartnershipItems(text: 'DrC\nlogo'),
            PartnershipItems(text: 'Bank\nlogo'),
            PartnershipItems(text: 'DrugStore\nlogo'),
            PartnershipItems(text: 'Insurance\nlogo')
          ],
        ),
      ), // todo => create widget
    );
  }
}

class OptionsMenu extends StatelessWidget {
  const OptionsMenu({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: SizedBox(
        width: 120,
        height: 120,
        child: ElevatedButton.icon(
          style: const ButtonStyle(
              elevation: MaterialStatePropertyAll(10),
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
          onPressed: () {},
          icon: Icon(
            // <-- Icon
            icon,
            color: Colors.black,
            size: 24.0,
          ),
          label: Text(
            text,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ), // <-- Text
        ),
      ),
    );
  }
}

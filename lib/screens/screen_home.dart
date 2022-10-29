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

import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';

class Sponsor extends StatelessWidget {
  const Sponsor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          automaticallyImplyLeading: false,
          title: const Text(
            'eTERA - Sponsor',
            style: TextStyle(color: Colors.black),
          )),
      body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 20), // todo => widget with "slide header"
                Text(
                  'Select your sponsor',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                Text(
                    "Select your sponsor and the details of the sponsorhip program."),
                SizedBox(height: 40)
              ])),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}

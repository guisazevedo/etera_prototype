import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';

class Consultations extends StatelessWidget {
  const Consultations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          automaticallyImplyLeading: false,
          title: const Text(
            'eTERA - Consultations',
            style: TextStyle(color: Colors.black),
          )),
      body: Container(),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}

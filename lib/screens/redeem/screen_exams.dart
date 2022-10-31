import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';

class Exams extends StatelessWidget {
  const Exams({Key? key}) : super(key: key);

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
            'eTERA - Exams',
            style: TextStyle(color: Colors.black),
          )),
      body: Container(),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}

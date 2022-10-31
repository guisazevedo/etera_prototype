import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';

class Yalo extends StatelessWidget {
  const Yalo({Key? key}) : super(key: key);

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
            'eTERA - Yalo',
            style: TextStyle(color: Colors.black),
          )),
      body: Container(),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}

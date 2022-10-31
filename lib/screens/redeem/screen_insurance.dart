import 'package:flutter/material.dart';
import 'package:etera_prototype/widgets.dart';

class Insurance extends StatelessWidget {
  const Insurance({Key? key}) : super(key: key);

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
            'eTERA - Insurance',
            style: TextStyle(color: Colors.black),
          )),
      body: Container(),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}

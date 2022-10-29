import 'dart:async';
import 'package:flutter/material.dart';

// text style of entry text
const kTextStyleEntry =
    TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900, color: Colors.white);

// timer constant
final kTimer = Timer(const Duration(seconds: 5), () {
  print('OK');
});

//Timer(const Duration(seconds: 5), () => print('Timer finished'))

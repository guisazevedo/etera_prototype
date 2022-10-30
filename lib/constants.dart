import 'package:flutter/material.dart';

// text style of entry text
const kTextStyleEntry =
    TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900, color: Colors.black);

const kTextFieldDecoration = InputDecoration(
    hintText: '',
    hintStyle: TextStyle(color: Colors.grey),
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(4.0))));

// Terms and conditions eTERA
const String termsConditions =
    '''Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,  consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.  Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam  erat, sed diam voluptua. At vero eos et accusam et justo duo dolores  et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus  est Lorem ipsum dolor sit amet. Duis autem vel eum iriure dolor in  hendrerit in vulputate velit esse molestie consequat, vel illum  dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto  odio dignissim qui blandit praesent luptatum zzril delenit augue  duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit ame.''';

// todo => how to wrap text (above)

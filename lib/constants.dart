import 'package:flutter/material.dart';

// text style of entry text
const kTextStyleEntry =
    TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900, color: Colors.black);

// decoration of text fields
const kTextFieldDecoration = InputDecoration(
    hintText: '',
    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
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

// "copyright (c) 2022"
const String kCopyright = 'Copyright \u00a9 2022';

// Terms and conditions eTERA
const String termsConditions =
    '''Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   

Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.   

Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.   

Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.   

At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur''';

/// todo EASY @home
/// . get all logos

// todo => how to wrap text (above)
// todo => create a kAppBar
// todo => Include "Copyright (c) 2022" on the bottom of every page
// todo => BottomAppBar include logos partners
// todo => review project and refactor it

// structural to dos
/// todo => TOP UP SCREEN:
/// . logos
/// . Pix number "copy" icon

/// todo => Monthly installments
/// . screen => explain: text; logo Bacen; horizontal scroll list of banks/programs;
/// . log transaction & card
/// . possibility to cancel future transfers

/// todo => Benefit programs
/// . log transaction
/// . generate QR code

/// todo => Sponsor
/// .screen => explain Sponsor & msg; name; you 1:1x sponsor or you 2:1x sponsor; limit
/// try do design the msg the sponsor will receive (even if on this prototype app)
/// explain to Sponsor the tax benefit

/// todo => REDEEM SCREEN
/// . logos

/// todo => Consultations
/// . screen sequence -> Online / Present -> City -> Specialty (show price) -> Branch -> day/time/doctor -> to whom? -> pay now (discount) or later (no discount)
/// . add terms and conditions from DrC

/// todo => Exams
/// . understand...
/// . add terms and conditions from DrC

/// todo => Yalo
/// . hide it for now OK
/// . see picture on iPhone OK
/// . add terms and conditions from Yalo/DrC

/// todo => Loans
/// . see picture on iPhone
/// . add terms and conditions from Bank

/// todo => Insurance
/// . understand...
/// . simply select/unselect -> show values -> send

/// todo => page with all receipts

/// todo => TIPS
/// . flash card valid tip
/// . list of tips/dynamic discounts -> insurance simulation

/// todo => INFO
/// . personal data -> edit
/// . FAQ
/// . Receipts (cards)
/// . Receipts list of expired / transacted

/// todo => TOP-UP
/// . Sponsor => make it contrast and OK when done

/// todo => at the very end -> check to see dynamic sizing

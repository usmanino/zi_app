// Flutter imports:
import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primary = Color.fromARGB(255, 161, 76, 6);
  static const Color secondary = Color.fromARGB(255, 235, 24, 24);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color warning = Color(0xFFEDE04D);

  static const Color blackShade1 = Color(0xff21293B);
  static const Color blackShade2 = Color(0xff191919);
  static const Color blackShade3 = Color(0xff5A5A5A);
  static const Color blackShade4 = Color(0xff272727);

  static Color kTextFieldColor = const Color(0xffF3F4F7).withAlpha(43);
  static const Color kTextFieldBorderColor = Color(0xffE2E9F8);

  // final kTextFieldColor = const Color(0xffF3F4F7).withAlpha(43);

  // const kTextFieldBorderColor = Color(0xffE2E9F8);

  static const Color background = Color(0xffF5F5F5);
  static const Color buttonColor = Color(0xFF278CFF);
  static const Color textPrimary = Color(0xFF263238);

  static const Color accentColor = Color(0xffFF385B);
  static const Color accentColor1 = Color(0xffFF9C8A);
  static const Color accentColor2 = Color(0xffFD94A7);
  static const Color accentColor3 = Color(0xFFFF4F6F);

  static const accentColorLinear = <Color>[
    Color(0xffFF1161),
    Color(0xffFF5B55),
  ];

  static const Color success = Color(0xff00D293);

  static final Color grey = Color(0xff9CA3AF);
  static final Color grey1 = Color(0xffF2F2F2);
  static final Color grey2 = Color(0xffEEEEEE);
  static final Color grey3 = Color(0xffD0D5DD);
  static final Color grey4 = Color(0xff6B7280);
  static final Color grey5 = Color(0xff9E9E9E);
  static final Color grey7 = Color(0xff344054);
  static final Color grey8 = Color(0xFF707070);

  static final Color grey9 = Color(0xff101828);

  static Color textGrey = const Color(0xff595751).withOpacity(.6);
  static Color error = const Color(0xffFF0000);
  static const String hexBlackShade = '#2E2E2E';

  static final boxshadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.04),
      spreadRadius: 0,
      blurRadius: 24,
      offset: const Offset(0, 4),
    ),
    BoxShadow(
      color: Colors.black.withOpacity(0.04),
      spreadRadius: 0,
      blurRadius: 20,
      offset: const Offset(4, 0),
    ),
  ];
}

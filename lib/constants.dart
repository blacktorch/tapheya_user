import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

// Colors
const Color kPrimary = Color(0xFF4612D6);
const Color kMid = Color(0xFF8B68F1);
const Color kDark = Color(0xFF03110A);
const Color kLight = Color(0xFFD2C4F8);
const Color kWhite = Color(0xFFFFFFFF);
const Color kBGWhite = Color(0xFFFAFAFA);
const Color kGrey = Color(0xFFe9e0ff);
const Color kBlack = Color(0xFF061B3A);
const Color kLightGrey = Color(0xFFD2D2D2);
const Color kMidGrey = Color(0xFF949494);
const Color kDarkGrey = Color(0xFF646464);
const Color kAccent = Color(0xFF21BF73);
const Color kAccentMid = Color(0xFF06D49E);

// Padding
const double kPaddingS = 10.0;
const double kPaddingM = 20.0;
const double kPaddingL = 32.0;

// Spacing
const double kSpaceS = 8.0;
const double kSpaceM = 16.0;

// Assets
const String kLogo = 'assets/logo.svg';

//Text
TextStyle kHeading1 = GoogleFonts.poppins(
  fontSize: 36,
  fontWeight: FontWeight.w900,
  color: kBlack,
);

TextStyle kHeading2 = GoogleFonts.poppins(
  fontSize: 26,
  fontWeight: FontWeight.w700,
  color: kDark,
);

TextStyle kHeading3 = GoogleFonts.poppins(
  fontSize: 20,
  fontWeight: FontWeight.w600,
);

TextStyle kHeading4 = GoogleFonts.poppins(
  fontSize: 20,
  fontWeight: FontWeight.w300,
  color: kMidGrey,
);

TextStyle kBody1 = GoogleFonts.poppins(
  fontSize: 17,
  fontWeight: FontWeight.w300,
  color: kMidGrey,
);

TextStyle kBody2 = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.w300,
  color: kDarkGrey,
);

TextStyle kDarkButton1 = GoogleFonts.poppins(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: kWhite,
);

TextStyle kDarkButton2 = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: kWhite,
);

TextStyle kTextButton = GoogleFonts.poppins(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  color: kPrimary,
);

TextStyle kTextButtonAccent = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.w300,
  color: kAccent,
);

TextStyle kHintText = GoogleFonts.poppins(
  fontSize: 16,
  fontWeight: FontWeight.w300,
  color: kLightGrey,
);

//App
const String kAppName = 'TAPHEYA';
const String kAppVersion = '1.0.0';

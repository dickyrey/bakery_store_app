import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kBackgroundLight = Color(0xFFF6F6F6);
const kCardLight = Color(0xFFFFFFFF);

const kBackgroundDark = Color(0xFF30314A);
const kCardDark = Color(0xFF1F203B);

const kGreyColor = Color(0xFFEBEDF6);

var kTitleStyle = GoogleFonts.comfortaa(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: kCardDark,
);
var kSubtitleStyle = GoogleFonts.comfortaa(
  fontSize: 15.0,
  color: Colors.black45,
);
var kPriceTitleStyle = GoogleFonts.comfortaa(
  fontSize: 15.0,
  fontWeight: FontWeight.bold,
  color: Colors.pink,
);
var kPriceSubtitleStyle = GoogleFonts.comfortaa(
  fontSize: 12.0,
  color: Colors.pink,
  decoration: TextDecoration.lineThrough,
);

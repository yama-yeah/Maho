import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appTitleStyleProvider = Provider(
  (ref) => GoogleFonts.getFont(
    'Caveat',
    fontSize: 90,
    foreground: Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xff00ff28),
          Color(0xfc18e6b4),
          Color(0xfa197cd7),
          Color(0xf9aeebff)
        ],
      ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)),
    //color: Colors.white,
  ),
);

final appBarTextStyleProvider = Provider((ref) => GoogleFonts.getFont(
      'Caveat',
      color: Colors.white.withOpacity(0.5),
      fontSize: 32,
    ));

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/constants.dart';

class MediumText extends StatelessWidget {
  const MediumText({Key? key, required this.text, this.color, this.fontSize})
      : super(key: key);
  final String text;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: color ?? nGreyColor,
        fontSize: fontSize ?? 16,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class SemiBoldText extends StatelessWidget {
  const SemiBoldText({Key? key, required this.text, this.color, this.fontSize})
      : super(key: key);
  final String text;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: color ?? nBlackColor,
        fontSize: fontSize ?? 18,
        fontWeight: FontWeight.w600,
        height: 1.1
      ),
      textAlign: TextAlign.center,
    );
  }
}

class BoldText extends StatelessWidget {
  const BoldText({Key? key, required this.text, this.color, this.fontSize})
      : super(key: key);
  final String text;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          color: color ?? nBlackColor,
          fontSize: fontSize ?? 18,
          fontWeight: FontWeight.w600,
          height: 1.1
      ),
      textAlign: TextAlign.center,
    );
  }
}


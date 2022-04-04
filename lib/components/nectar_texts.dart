import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MediumText extends StatelessWidget {
  const MediumText({Key? key, required this.text, required this.color})
      : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: color,
        fontSize: 16,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class SemiBoldText extends StatelessWidget {
  const SemiBoldText({Key? key, required this.text, required this.color})
      : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: color,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 1
      ),
      textAlign: TextAlign.center,
    );
  }
}

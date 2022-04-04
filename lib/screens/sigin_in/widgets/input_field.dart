import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/nectar_texts.dart';

class SigInInInputField extends StatelessWidget {
  const SigInInInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Image.asset("assets/icons/bd.png"),
        prefixText: '+880',
        prefixStyle: GoogleFonts.poppins(
            color: const Color(0xFF030303),
            fontSize: 18,
            fontWeight: FontWeight.w600,
            height: 1),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/constants.dart';

import '../../../size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            height: 30,
            width: 30,
            child: Image.asset(
              "assets/icons/carrot_colorful.png",
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_on,
              color: Color(0xFF393636),
            ),
            const SizedBox(width: 3,),
            Text(
              "Dhaka, Banassre",
              style: GoogleFonts.poppins(
                  color: const Color(
                    0xFF4C4F4D,
                  ),
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ],
        ),
        SizedBox(
          height: getProportionateScreenHeight(15),
        ),
        Container(
          height: getProportionateScreenHeight(51),
          decoration: BoxDecoration(
              color: const Color(0xFFF2F3F2),
              borderRadius: BorderRadius.circular(15)),
          child: TextFormField(
            cursorColor: nectarPrimaryColor,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
                hintText: "Search Store",
                prefixIcon: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset("assets/icons/search.svg")),
                border: InputBorder.none),
          ),
        )
      ],
    );
  }
}

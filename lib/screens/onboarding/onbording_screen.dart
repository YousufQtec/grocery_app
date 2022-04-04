import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/components/nectar_texts.dart';
import 'package:grocery_app/constants.dart';
import 'package:grocery_app/size_config.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/onboarding_bg.png",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Positioned(
            bottom: getProportionateScreenHeight(90),
            child: Column(
              children: [
                SvgPicture.asset("assets/icons/carrot_white.svg"),
                const SizedBox(
                  height: 35,
                ),
                SizedBox(
                  width: getProportionateScreenWidth(350),
                  child: Text(
                    "Welcome to our store",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 48,
                        height: 1),
                  ),
                ),
                const MediumText(
                  text: "Ger your groceries in as fast as one hour",
                  color: Color(0xFFFCFCFC),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const SemiBoldText(
                    text: "Get Started",
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.grey[300],
                    primary: nectarPrimaryColor,
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(124),
                        vertical: getProportionateScreenHeight(24)),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

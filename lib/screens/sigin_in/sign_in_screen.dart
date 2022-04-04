import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/screens/sigin_in/widgets/input_field.dart';
import 'package:grocery_app/screens/sigin_in/widgets/social_button.dart';
import 'package:grocery_app/size_config.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/signin_bg.png", fit: BoxFit.fill,),
              SizedBox(
                  width: getProportionateScreenWidth(300),
                  child: Text(
                    "Get your groceries with nectar",
                    style: GoogleFonts.poppins(
                        color: const Color(0xFF030303),
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        height: 1.1),
                    textAlign: TextAlign.left,
                  )),
              const SizedBox(
                height: 30,
              ),
              const SigInInInputField(),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "Or connect with social media",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color(0xFF828282),
                  ),
                ),
              ),
              const SizedBox(
                height: 37,
              ),
              SocialButton(
                btnName: "Continue with Google",
                iconPath: "assets/icons/google.svg",
                bgColor: const Color(0xFF5383EC),
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              SocialButton(
                btnName: "Continue with Facebook",
                iconPath: "assets/icons/facebook.svg",
                bgColor: const Color(0xFF4A66AC),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

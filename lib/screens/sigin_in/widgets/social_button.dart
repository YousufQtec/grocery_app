import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/components/nectar_texts.dart';
import '../../../size_config.dart';

class SocialButton extends StatelessWidget {
  const SocialButton(
      {Key? key,
      required this.btnName,
      required this.iconPath,
      required this.bgColor,
      required this.onPressed})
      : super(key: key);
  final String btnName;
  final String iconPath;
  final Color bgColor;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 24, width: 24, child: SvgPicture.asset(iconPath)),
          SemiBoldText(text: btnName, color: const Color(0xFFFCFCFC))
        ],
      ),
      style: ElevatedButton.styleFrom(
        elevation: 10.0,
        onPrimary: Colors.grey[300],
        primary: bgColor,
        padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenHeight(21),
            horizontal: getProportionateScreenWidth(35)),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}

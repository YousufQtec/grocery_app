import 'package:flutter/material.dart';
import 'package:grocery_app/components/nectar_texts.dart';
import 'package:grocery_app/constants.dart';
import '../size_config.dart';

class NectarCommonButton extends StatelessWidget {
  const NectarCommonButton(
      {Key? key, required this.onPressed, required this.btnName})
      : super(key: key);
  final GestureTapCallback onPressed;
  final String btnName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      child: ElevatedButton(
        onPressed: onPressed,
        child: SemiBoldText(text: btnName, color: const Color(0xFFFCFCFC)),
        style: ElevatedButton.styleFrom(
          elevation: 10.0,
          onPrimary: Colors.grey[300],
          primary: nectarPrimaryColor,
          padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenHeight(22),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(19)),
          ),
        ),
      ),
    );
  }
}

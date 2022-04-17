import 'package:flutter/material.dart';
import 'package:grocery_app/components/nectar_texts.dart';
import 'package:grocery_app/constants.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SemiBoldText(
          text: 'Exclusive Offer',
          fontSize: 24,
        ),
        TextButton(
            onPressed: () {},
            child: const SemiBoldText(
              text: 'See all',
              fontSize: 16,
              color: nectarPrimaryColor,
            ))
      ],
    );
  }
}

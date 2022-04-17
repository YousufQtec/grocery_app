import 'package:flutter/material.dart';
import 'package:grocery_app/components/nectar_texts.dart';
import 'package:grocery_app/constants.dart';
import 'package:grocery_app/size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenHeight(173),
      height: getProportionateScreenWidth(248),
      decoration: BoxDecoration(
        border: Border.all(color: nBorderColor),
        borderRadius: BorderRadius.circular(18),
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/apple.png',
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 20,
          ),
          const SemiBoldText(
            text: 'Red Apple',
            fontSize: 16,
          ),
          const MediumText(
            text: '1kg, Price',
            fontSize: 14,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SemiBoldText(text: "$dollar 4.99"),
              SizedBox(
                height: 45,
                width: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.add,),
                  style: ElevatedButton.styleFrom(
                    elevation: 10.0,
                    onPrimary: Colors.grey[300],
                    primary: nectarPrimaryColor,
                    padding: EdgeInsets.all(getProportionateScreenHeight(14)),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

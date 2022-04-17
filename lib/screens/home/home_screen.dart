import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_app/screens/home/cubit/home_slider_cubit.dart';
import 'package:grocery_app/screens/home/widgets/exclusive_offer.dart';
import 'package:grocery_app/screens/home/widgets/home_header.dart';
import 'package:grocery_app/screens/home/widgets/home_slider.dart';
import '../../size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: SizeConfig.screenWidth,
        padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenHeight(80),
            horizontal: getProportionateScreenWidth(24)),
        child: Column(
          children: [
            const HomeHeader(),
            BlocProvider(
              create: (context) => HomeSliderCubit(),
              child: const HomeSlider(),
            ),
            const ExclusiveOffer()
          ],
        ),
      ),
    );
  }
}

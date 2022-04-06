import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_app/constants.dart';
import 'package:grocery_app/screens/home/cubit/home_slider_cubit.dart';
import 'package:grocery_app/size_config.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(
            top: getProportionateScreenHeight(20),
            bottom: getProportionateScreenHeight(30)),
        child: SizedBox(
          height: getProportionateScreenHeight(115),
          child: BlocBuilder<HomeSliderCubit, int>(
            builder: (context, currentIndex) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  PageView.builder(
                    onPageChanged: (value) {
                      context.read<HomeSliderCubit>().onPageChanged(value);
                    },
                    itemCount: sliderImages.length,
                    itemBuilder: (context, index) => SliderContent(
                      imagePath: sliderImages[index],
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    child: Row(
                      children: List.generate(
                          sliderImages.length,
                          (index) => PagerDot(
                                index: index,
                                currentIndex: currentIndex,
                              )),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class SliderContent extends StatelessWidget {
  const SliderContent({Key? key, required this.imagePath}) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(115),
      width: SizeConfig.screenWidth,
      child: Image.asset(
        imagePath,
        fit: BoxFit.fill,
      ),
    );
  }
}

class PagerDot extends StatelessWidget {
  const PagerDot({Key? key, required this.index, required this.currentIndex})
      : super(key: key);
  final int index;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: index == currentIndex ? 20 : 6,
      decoration: BoxDecoration(
        color: currentIndex == index
            ? nectarPrimaryColor
            : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

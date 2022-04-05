import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/components/nectar_common_button.dart';
import 'package:grocery_app/constants.dart';
import 'package:grocery_app/screens/select_location/cubit/area_select_cubit.dart';
import 'package:grocery_app/screens/select_location/cubit/zone_select_cubit.dart';
import 'package:grocery_app/size_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectLocationScreen extends StatelessWidget {
  const SelectLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
          "assets/images/location_bg.png",
        ))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(35),
            ),
            SizedBox(
              width: SizeConfig.screenWidth,
              child: Align(
                alignment: Alignment.topLeft,
                child: Material(
                  color: Colors.transparent,
                  child: IconButton(
                      tooltip: "back",
                      onPressed: () {
                        //
                      },
                      icon: SvgPicture.asset("assets/icons/back_arrow.svg")),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Image.asset("assets/images/location_pin.png"),
            SizedBox(
              height: getProportionateScreenHeight(25),
            ),
            Text(
              'Select Your Location',
              style: GoogleFonts.poppins(
                  color: const Color(0xFF181725),
                  fontSize: 26,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Text(
              'Switch on your location to stay in tune with what’s happening in your area',
              style: GoogleFonts.poppins(
                  color: const Color(0xFF7C7C7C),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
            SizedBox(
              width: SizeConfig.screenWidth,
              child: Text(
                'Your Zone',
                style: GoogleFonts.poppins(
                    color: const Color(0xFF7C7C7C),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              width: SizeConfig.screenWidth,
              child: BlocBuilder<ZoneSelectCubit, String>(
                builder: (context, state) {
                  return DropdownButtonFormField(
                    icon: SvgPicture.asset("assets/icons/arrow_down.svg"),
                    hint: const Text('Please choose a location'),
                    value: state,
                    onChanged: (String? newValue) {
                      context.read<ZoneSelectCubit>().zoneOnChanged(newValue!);
                    },
                    items: nectarZones.map((zone) {
                      return DropdownMenuItem(
                        child: Text(zone),
                        value: zone,
                      );
                    }).toList(),
                  );
                },
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            SizedBox(
              width: SizeConfig.screenWidth,
              child: Text(
                'Your Area',
                style: GoogleFonts.poppins(
                    color: const Color(0xFF7C7C7C),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              width: SizeConfig.screenWidth,
              child: BlocBuilder<AreaSelectCubit, String>(
                builder: (context, state) {
                  return DropdownButtonFormField(
                    icon: SvgPicture.asset("assets/icons/arrow_down.svg"),
                    hint: const Text('Please choose a location'),
                    value: state,
                    onChanged: (String? newValue) {
                      context.read<AreaSelectCubit>().areaOnChanged(newValue!);
                    },
                    items: nectarArea.map((area) {
                      return DropdownMenuItem(
                        child: Text(area),
                        value: area,
                      );
                    }).toList(),
                  );
                },
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            NectarCommonButton(onPressed: () {}, btnName: 'Submit')
          ],
        ),
      ),
    );
  }
}

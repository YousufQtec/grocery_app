

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/size_config.dart';

class SelectLocationScreen extends StatelessWidget {
  const SelectLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  List<String> _locations = ['Please choose a location', 'A', 'B', 'C', 'D']; // Option 1
//  String _selectedLocation = 'Please choose a location'; // Option 1
    List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
    String _selectedLocation = "A"; // Option 2

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
            const SizedBox(height: 56,),
            SizedBox(
              width: SizeConfig.screenWidth,
              child: Align(
                alignment: Alignment.topLeft,
                child: Material(
                  color: Colors.transparent,
                  child: IconButton(
                    tooltip: "back",
                      onPressed: () {
                        print("onPressed");
                      },
                      icon: SvgPicture.asset("assets/icons/back_arrow.svg")),
                ),
              ),
            ),
            const SizedBox(height: 44,),
            Image.asset("assets/images/location_pin.png"),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Select Your Location',
              style: GoogleFonts.poppins(
                  color: const Color(0xFF181725),
                  fontSize: 26,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Switch on your location to stay in tune with what’s happening in your area',
              style: GoogleFonts.poppins(
                  color: const Color(0xFF7C7C7C),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 90,),
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
              child: DropdownButton(
                hint: Text('Please choose a location'), // Not necessary for Option 1
                value: _selectedLocation,
                onChanged: (newValue) {

                },
                items: _locations.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

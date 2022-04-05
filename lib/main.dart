import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_app/screens/onboarding/onbording_screen.dart';
import 'package:grocery_app/screens/select_location/cubit/area_select_cubit.dart';
import 'package:grocery_app/screens/select_location/cubit/zone_select_cubit.dart';
import 'package:grocery_app/screens/select_location/select_location_screen.dart';
import 'package:grocery_app/screens/sigin_in/sign_in_screen.dart';
import 'package:grocery_app/screens/splash/splash_screen.dart';
import 'package:grocery_app/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ZoneSelectCubit()),
          BlocProvider(create: (context) => AreaSelectCubit()),
        ],
        child: const SelectLocationScreen(),
      ),
    );
  }
}

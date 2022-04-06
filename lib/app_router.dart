import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_app/core/exceptions/route_exception.dart';
import 'package:grocery_app/screens/onboarding/onbording_screen.dart';
import 'package:grocery_app/screens/select_location/cubit/area_select_cubit.dart';
import 'package:grocery_app/screens/select_location/cubit/zone_select_cubit.dart';
import 'package:grocery_app/screens/select_location/select_location_screen.dart';
import 'package:grocery_app/screens/sigin_in/sign_in_screen.dart';
import 'package:grocery_app/screens/splash/splash_screen.dart';

class AppRouter{
  static const String splashScreenRoute = '/';
  static const String onBoardingScreenRoute = '/onBoardingScreenRoute';
  static const String signInScreenRoute = '/signInScreenRoute';
  static const String selectLocationScreenRoute = '/selectLocationScreenRoute';
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreenRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case signInScreenRoute:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case onBoardingScreenRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case selectLocationScreenRoute:
        return MaterialPageRoute(builder: (_) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => ZoneSelectCubit()),
            BlocProvider(create: (context) => AreaSelectCubit()),
          ],
          child: const SelectLocationScreen(),
        ));
      default:
        throw const RouteException('Route not found!');
    }
  }
}
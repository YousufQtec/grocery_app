import 'package:flutter/material.dart';
import 'package:grocery_app/screens/onboarding/onbording_screen.dart';
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
      home: const OnboardingScreen(),
    );
  }
}

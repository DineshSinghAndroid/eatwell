import 'package:flutter/material.dart';
import 'package:eatwell/Views/onboardingScreens/login_screen.dart';
import 'package:eatwell/Views/onboardingScreens/register_screen.dart';

 import '../../Views/ BottomNavigationBar/HomeScreen/home_screen.dart';
import 'RouteNames.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    ///Onboarding
    case loginScreen:
      return MaterialPageRoute(builder: (context) => LoginScreen());
    ///Onboarding
    case signUpScreen:
      return MaterialPageRoute(builder: (context) => RegisterScreen());

  ///Onboarding
    case homeScreen:
      return MaterialPageRoute(builder: (context) => HomeScreen());

    default:
      return MaterialPageRoute(builder: (context) => LoginScreen());
  }
}

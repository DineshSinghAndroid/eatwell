import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eatwell/Views/onboardingScreens/login_screen.dart';
import 'package:eatwell/Controllers/RouteController/Route.dart 'as router;


void main()   {

  runApp(MyApp());
}


String userName = '';

class MyApp extends StatelessWidget {
    MyApp({super.key});
   @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
    );
  }
}

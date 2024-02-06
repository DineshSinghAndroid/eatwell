import 'package:eatwell/Controllers/LoaderControllers/LoadScreen/LoadScreen.dart';
import 'package:eatwell/Controllers/LoginScreenController/loginScreenController.dart';
import 'package:eatwell/Controllers/Utils/BuildText/BuildText.dart';
import 'package:eatwell/Views/%20BottomNavigationBar/HomeScreen/home_screen.dart';
import 'package:eatwell/Views/onboardingScreens/forgot_password_screen.dart';
import 'package:eatwell/Views/onboardingScreens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ BottomNavigationBar/HomeScreen/home_screeen_controller.dart';
import '../ BottomNavigationBar/bottom_bar_screen.dart';
import '../../Controllers/Utils/ButtonCustom.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginScreenController _loginCtrl = Get.put(LoginScreenController());
  final HomeScreenController _homeCtrl = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _loginCtrl,
      builder: (controller) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildSizeBox(30.0, 0.0),
                    Image.asset(
                      'assets/images/eatWell.png',
                      height: 150,
                      width: 200,
                    ), // Add your logo asset here
                    buildSizeBox(50.0, 0.0),
                    TextField(
                      controller: _loginCtrl.emailCtrl,
                      decoration: InputDecoration(labelText: 'E-mail', labelStyle: TextStyle(fontSize: 18,color: Colors.grey), enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen, width: 2),
                      ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightGreen,width: 2),
                        ), ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: _loginCtrl.passwordCtrl,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(fontSize: 18,color: Colors.grey),
                        hintText: 'Password',enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen, width: 2),
                      ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightGreen),
                        ), ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ForgotPasswordScreen()),
                          );
                        },
                        child: BuildText.buildText(text:'Forgot Password ?',size: 14, color: Colors.grey,
                            style: TextStyle(color: Colors.grey.shade100))),
                    buildSizeBox(10.0, 0.0),

                    Column(children: <Widget>[
                      ButtonCustom(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) =>
                          //           BottomNavigationBarHome()),
                          // );
                          _loginCtrl.onTapLoginBtn(context: context);
                        },
                        text: 'Log In',textSize: 16,),
                      buildSizeBox(20.0, 0.0),
                      Row(
                        children: [
                          Expanded(child: Divider(color: Colors.grey, indent: 10,)),
                          BuildText.buildText(text:' Or',color: Colors.grey,
                              style: TextStyle(color: Colors.grey)),
                          Expanded(child: Divider(color: Colors.grey, indent: 10,)),
                        ],
                      ),
                      buildSizeBox(20.0, 0.0),
                      ButtonCustom(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()),
                          );
                        },
                        text: "Sign Up", textSize: 16,
                      ),
                      buildSizeBox(10.0, 0.0),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      HomeScreen()),
                            );
                          },
                          child: BuildText.buildText(text:'Later', color: Colors.grey,
                              style: TextStyle(color: Colors.grey))),
                    ])
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

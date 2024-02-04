import 'package:eatwell/Controllers/LoaderControllers/LoadScreen/LoadScreen.dart';
import 'package:eatwell/Controllers/LoginScreenController/loginScreenController.dart';
import 'package:eatwell/Controllers/Utils/BuildText/BuildText.dart';
import 'package:eatwell/Views/onboardingScreens/forgot_password_screen.dart';
import 'package:eatwell/Views/onboardingScreens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ BottomNavigationBar/bottom_bar_screen.dart';
import '../../Controllers/Utils/ButtonCustom.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginScreenController _loginCtrl = Get.put(LoginScreenController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _loginCtrl,
      builder: (controller) {
        return Scaffold(
          body: LoadScreen(widget:  SafeArea(
            child: SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/logo.jpg',
                        height: 200,
                        width: 200,
                      ), // Add your logo asset here
                      buildSizeBox(40.0, 0.0),
                      TextField(
                        controller: _loginCtrl.emailCtrl,
                        decoration: InputDecoration(labelText: 'E-mail'),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: _loginCtrl.passwordCtrl,

                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgotPasswordScreen()),
                                  );
                                },
                                child: BuildText.buildText(text:'Forgot Password ?',
                                    style: TextStyle(color: Colors.green)))),
                      ),
                      const SizedBox(height: 20),

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
                            text: 'Log In'),
                        buildSizeBox(20.0, 0.0),
                        Divider(),
                        buildSizeBox(20.0, 0.0),
                        ButtonCustom(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()),
                            );
                          },
                          text: "Sign Up",
                        ),
                        buildSizeBox(40.0, 0.0),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ForgotPasswordScreen()),
                              );
                            },
                            child: BuildText.buildText(text:'Later',
                                style: TextStyle(color: Colors.grey))),
                      ])
                    ],
                  ),
                ),
              ),
            ),
          ), isLoading: _loginCtrl.isLoading.value),
        );
      },
    );
  }
}

import 'package:eatwell/Controllers/LoaderControllers/LoadScreen/LoadScreen.dart';
import 'package:eatwell/Controllers/LoginScreenController/loginScreenController.dart';
import 'package:eatwell/Controllers/Utils/ButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controllers/Utils/BuildText/BuildText.dart';
import 'login_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  LoginScreenController _loginCtrl = Get.put(LoginScreenController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _loginCtrl,
      builder: (controller) {
        return LoadScreen(
            widget: Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: Get.height,
                    width: Get.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 100,
                          backgroundColor: Colors.lightGreen.shade200,
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.lightGreen,
                            child: Icon(Icons.lock_outline,
                                size: 80, color: Colors.white),
                          ),
                        ),
                        buildSizeBox(20.0, 0.00),
                        BuildText.buildText(
                            text: 'Forgot Password',
                            color: Colors.green,
                            weight: FontWeight.w800),

                        buildSizeBox(40.0, 0.00),
                        TextField(
                          // controller: _loginCtrl.passwordCtrl,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                            hintText: 'E-mail',
                            hintStyle: TextStyle(color: Colors.grey),
                            labelStyle: TextStyle(color: Colors.lightGreen),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.lightGreen, width: 1.22),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightGreen),
                            ),
                          ),
                        ),
                        buildSizeBox(40.0, 0.00),
                        ButtonCustom(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) =>
                              //           BottomNavigationBarHome()),
                              // );
                              //_loginCtrl.onTapLoginBtn(context: context);
                            },
                            text: 'Retrieve'),
                        MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                              );
                            },
                            child: BuildText.buildText(
                              text: 'Cancel',
                              color: Colors.grey
                            )),
                        Spacer()
                      ],
                    ),
                  ),
                ),
              ),
            ),
            isLoading: _loginCtrl.isLoading.value);
      },
    );
  }
}

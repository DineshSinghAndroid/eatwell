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
                child: Container(
                  height: Get.height,
                  width: Get.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 90,
                        backgroundColor: Colors.green,
                        child: Icon(Icons.lock, size: 50, color: Colors.white),
                      ),
                      buildSizeBox(40.0, 0.00),


                      BuildText.buildText(
                          text: 'Forgot Password',
                          color: Colors.green,weight: FontWeight.w800),
                      Spacer(),

                      TextField(
                        decoration: InputDecoration(
                            hintText: 'E-mail',
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                      ),
                      buildSizeBox(40.0, 0.00),

                      ButtonCustom(
                          onPressed: () {},
                             text: 'Retrieve',
                          ),
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
                          )),
                      Spacer()
                    ],
                  ),
                ),
              ),
            ),
            isLoading: _loginCtrl.isLoading.value);
      },
    );
  }
}

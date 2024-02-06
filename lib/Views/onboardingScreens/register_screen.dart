import 'package:eatwell/Controllers/Utils/BuildText/BuildText.dart';
import 'package:eatwell/Views/%20BottomNavigationBar/bottom_bar_screen.dart';
import 'package:eatwell/Views/onboardingScreens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../Controllers/LoginScreenController/registerScreenController.dart';
import '../../Controllers/Utils/ButtonCustom.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final RegisterScreenController _signCtrl =
      Get.put(RegisterScreenController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _signCtrl,
      builder: (controller) {
        return Scaffold(
          // appBar: AppBar(
          //   title: BuildText.buildText(text: 'Sign Up', textAlign: TextAlign.start,weight: FontWeight.w700,size: 19),
          //   actions: [
          //     Padding(
          //       padding: const EdgeInsets.only(right: 8.0),
          //       child: IconButton(
          //         icon: Icon(Icons.close),
          //         onPressed: () {
          //           Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()),);
          //
          //         },
          //       ),
          //     ),
          //   ],
          //   leading: BuildText.buildText(text:''),
          // ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    buildSizeBox(10.00, 0.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BuildText.buildText(text: 'Sign Up', textAlign: TextAlign.start,weight: FontWeight.w500,size: 18),
                        SvgPicture.asset(
                         'assets/svg/cancel.svg', height: 20,
                         // semanticsLabel: 'Acme Logo'
                      ),
                      ],
                    ),
                    buildSizeBox(40.00, 0.0),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              _signCtrl.misOrMrTap(box1or2: 1);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8),
                              decoration: BoxDecoration(
                                  color: _signCtrl.missOrMr.value == 2
                                      ? Colors.transparent
                                      : Colors.lightGreen,
                                  borderRadius: BorderRadius.all(Radius.circular(6)),
                                  border: Border.all(
                                      color: Colors.grey, width: 0.5)),
                              child: Center(
                                child: BuildText.buildText(text: "Mrs", color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        buildSizeBox(0.00, 10.0),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              _signCtrl.misOrMrTap(box1or2: 2);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8),
                              decoration: BoxDecoration(
                                  color: _signCtrl.missOrMr.value == 1
                                      ? Colors.transparent
                                      : Colors.lightGreen,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  border: Border.all(
                                      color: Colors.grey, width: 0.5)),
                              child: Center(
                                child: BuildText.buildText(text: "Mr.", color: _signCtrl.missOrMr.value == 1 ? Colors.grey : Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    buildSizeBox(20.00, 0.0),
                    const TextField(
                        decoration: InputDecoration(
                      labelText: 'First name',
                      labelStyle: TextStyle(fontSize: 14,color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.lightGreen, width: 2),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.lightGreen),
                          ),

                        )),
                    const TextField(decoration: InputDecoration(labelText: 'Name', labelStyle: TextStyle(fontSize: 14,color: Colors.grey),enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen, width: 2),
                    ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen),
                      ), ),),
                    const TextField(decoration: InputDecoration(labelText: 'E-mail', labelStyle: TextStyle(fontSize: 14,color: Colors.grey),enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen, width: 2),
                    ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen),
                      ), )),
                    const TextField(
                        obscureText: true,
                        decoration: InputDecoration(labelText: 'Password', labelStyle: TextStyle(fontSize: 14,color: Colors.grey),enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightGreen, width: 2),
                        ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.lightGreen,width: 2),
                          ), )),
                    SizedBox(height: 20),
                    // BuildText.buildText(
                    //     text: 'By using friends & food, you agree on our Terms of Service and Privacy Policy'),
                    RichText(
                      text: const TextSpan(
                        text: 'By using friends & food, you agree on our ',
                        style: TextStyle(
                          color: Colors.black
                        ),
                        children: [
                          TextSpan(
                            text: 'Terms of Service ',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.blue
                            ),
                          ),
                          TextSpan(
                            text: 'and',
                          ),
                          TextSpan(
                            text: ' Privacy Policy ',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.blue
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    ButtonCustom(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavigationBarHome(),
                              ));
                        },
                        text: 'Sign Up', textSize: 16,),
                    SizedBox(height: 20),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
                        },
                        child: BuildText.buildText(
                            text: 'Already have an account ? Log in', color: Colors.grey, size: 16))
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

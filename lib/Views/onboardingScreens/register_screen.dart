import 'package:eatwell/Controllers/Utils/BuildText/BuildText.dart';
import 'package:eatwell/Views/%20BottomNavigationBar/bottom_bar_screen.dart';
import 'package:eatwell/Views/onboardingScreens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eatwell/Controllers/LoaderControllers/LoadScreen/LoadScreen.dart';
import 'package:eatwell/Controllers/LoginScreenController/loginScreenController.dart';

import '../../Controllers/LoginScreenController/registerScreenController.dart';
import '../../Controllers/Utils/ButtonCustom.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final RegisterScreenController _signCtrl = Get.put(RegisterScreenController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _signCtrl,
      builder: (controller) {
        return  Scaffold(
          appBar: AppBar(
            title: BuildText.buildText(text: 'Sign Up',weight: FontWeight.w700,size: 19),
            actions: [
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()),);

                },
              ),
            ],
            leading: BuildText.buildText(text:''),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                      Expanded(
                        child: InkWell(
                    onTap: (){
              _signCtrl.misOrMrTap(box1or2: 1);
              },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                            decoration: BoxDecoration(
                                color: _signCtrl.missOrMr.value == 2 ?Colors.transparent:Colors.green,

                                borderRadius: BorderRadius.all(Radius.circular(8))
                                  ,border: Border.all(color: Colors.grey,width: 0.5)
                            ),
                            child: Center(
                              child: BuildText.buildText(text: "Mrs"),
                            ),
                          ),
                        ),
                      ),
                      buildSizeBox(0.00, 10.0),
                      Expanded(
                        child: InkWell(
                          onTap: (){
                            _signCtrl.misOrMrTap(box1or2: 2);
                          },
                          child: Container(

                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                            decoration: BoxDecoration(
                              color: _signCtrl.missOrMr.value == 1 ?Colors.transparent:Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(8))
                                  ,border: Border.all(color: Colors.grey,width: 0.5)
                            ),
                            child: Center(
                              child: BuildText.buildText(text: "Mr."),
                            ),
                          ),
                        ),
                      ),

                      ],
                    ),
                    TextField(decoration: InputDecoration(labelText: 'First name',
                    disabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.green)

                    ),
                      focusColor: Colors.yellow,
                      fillColor:  Colors.yellow,
                      hoverColor: Colors.yellow,


                    )),

                    TextField(decoration: InputDecoration(labelText: 'Name')),
                    TextField(decoration: InputDecoration(labelText: 'E-mail')),
                    TextField(obscureText:true, decoration:
                    InputDecoration(labelText:'Password')),
                    SizedBox(height :20),
                    ButtonCustom(onPressed : (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationBarHome(),));
                    }, text   :'Sign Up' ),
                    SizedBox(height :20),
                    BuildText.buildText(text:'By using friends & food, you agree on our Terms of Service and Privacy Policy'),
                    SizedBox(height :20),
                    TextButton(onPressed : (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));

                    }, child : BuildText.buildText(text:'Already have an account ? Log in'))
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

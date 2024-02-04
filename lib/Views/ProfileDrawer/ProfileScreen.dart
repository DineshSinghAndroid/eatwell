import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:eatwell/Controllers/Utils/BuildText/BuildText.dart';
import 'package:eatwell/Controllers/Utils/Colors/custom_color.dart';
import 'package:eatwell/Views/ProfileDrawer/profile_screen_controller.dart';

import '../../Controllers/Utils/CustomAppBar.dart';


class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final HomeProfileScreenController _profileCtrl =
      Get.put(HomeProfileScreenController());

  RxInt indexNumber = 0.obs;

  List screenNameList =[

    "Home",
    "All The Recipes",
    "Stores",
    "My Friends",
    "Eat Well",
    "What i Like",
    "Preferences",
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _profileCtrl,
      builder: (controller) {
        return Scaffold(
          backgroundColor:Color(0xff414141),
          body: SafeArea(
            child: Container(

              padding: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
              child: Column(
                children: [

                  InkWell(

                    onTap: (){
                      Fluttertoast.showToast(msg: "Login screen yet in development");
                    },
                    child: Container(

                      width: Get.width,
                      padding: EdgeInsets.symmetric(vertical: 8),
                      margin: EdgeInsets.symmetric(horizontal: 8),

                      decoration: BoxDecoration(
                      color: AppColors.appBarBackgroundColor.withOpacity(0.9)
                         ,borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: Center(child: BuildText.buildText(text: "Log In !",size: 18,color: AppColors.whiteColor,weight: FontWeight.w700)),),
                  ),
                  buildSizeBox(20.0, 0.0),
                  Container(

                    height: Get.height/1.5,child: ListView.builder(
                    itemCount:  screenNameList.length??0,

                    itemBuilder: (context, index) {

                    return InkWell(
                      onTap: (){
                        indexNumber.value = index;
                        setState(() {

                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),

                        decoration: BoxDecoration(

                        color:indexNumber.value == index ? Colors.black:Colors.transparent,
                      ),
                      child: BuildText.buildText(text: screenNameList[index].toString(),
                                         color:   indexNumber.value == index ? AppColors.appBarBackgroundColor:Colors.white,

                      size: 14,weight: FontWeight.w500),
                      ),
                    );
                  },),)
                ],
              ),

            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'BuildText/BuildText.dart';
import 'Colors/custom_color.dart';


AppBar CustomAppBar({
  required String text,
  List<Widget>? action,
  IconButton? leading,
}) {
  return AppBar(

    centerTitle: true,
    // leading:
    //     leading ?? IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
    // leading: IconButton(
    //   icon: Icon(
    //     Icons.arrow_back,
    //     color: Colors.white,
    //     size: 23,
    //   ),
    //   onPressed: () {
    //     Get.back();
    //   },
    // ),
// leading: Drawer(),
    backgroundColor: AppColors.appBarBackgroundColor,
    title: BuildText.buildText(
        text: text, size: 16, weight: FontWeight.w500, color: Colors.white),
    actions: action ?? [],
  );
}

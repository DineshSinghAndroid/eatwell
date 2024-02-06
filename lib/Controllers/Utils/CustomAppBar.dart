import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'BuildText/BuildText.dart';
import 'Colors/custom_color.dart';

// AppBar CustomAppBar({
//   required String text,
//   List<Widget>? action,
//   IconButton? leading,
// }) {
//   return AppBar(
//     centerTitle: true,
//     backgroundColor: AppColors.appBarBackgroundColor,
//     title: BuildText.buildText(
//         text: text, size: 16, weight: FontWeight.w500, color: Colors.white),
//     actions: action ?? [],
//   );
// }

AppBar CustomAppBar({
  required String text,
  List<Widget>? action,
  Title,
  isRestro = false,
  final Leadingdata,
  final restaurantLeading,
  final restaurantAdd,
  final restaurantSearch,
  final restaurantFilter,
  final restaurantFilterText,
  // shopTitle,
  shopLeading,
  // friendsTitle,
  friendsLeading,
  leadingWidth,
  leadingColor,
  IconButton? leading,
}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.lightGreen,
    title: Row(
      children: [
        BuildText.buildText(
            text: text,
            size: 16,
            weight: FontWeight.w500,
            color: Colors.white),
        SizedBox(
          width: 12,
        ),
        Icon(
          restaurantAdd,
          size: 30,
          color: Colors.white,
        ),
        SizedBox(
          width: 6,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Icon(
            restaurantSearch,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            Image.asset(
              restaurantFilter.toString(),
              color: Colors.white,
              height: 40,
            ),
            Text(
              restaurantFilterText.toString(),
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ],
    ),
    leading: isRestro == false
        ? Icon(
            Icons.menu,
            color: leadingColor,
            size: 20,
          )
        : Text(
            Leadingdata,
            style: TextStyle(color: leadingColor, fontSize: 16),
          ),
    leadingWidth: leadingWidth,
    actions: action ?? [],
  );
}

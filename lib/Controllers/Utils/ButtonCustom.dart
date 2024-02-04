import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'BuildText/BuildText.dart';
import 'Colors/custom_color.dart';
class ButtonCustom extends MaterialButton {
  final CalbackFunction onPressed;
  String text;
  double? textSize;
  double? buttonWidth;
  double? buttonHeight;
  double? radius;
  Color? backgroundColor;
  Color? textColor;
  bool? useBorder;
  BorderRadius? borderRadius;

  ButtonCustom(
      {required this.onPressed,
      required this.text,
      this.buttonWidth,
      this.buttonHeight,
      this.textSize,
      this.radius,
      this.textColor,
      this.backgroundColor,
      this.useBorder,
      this.borderRadius})
      : super(onPressed: onPressed);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: backgroundColor ?? AppColors.appBarBackgroundColor.withOpacity(0.7),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        height: buttonHeight ?? 40,
        width: buttonWidth ?? Get.width,
        alignment: Alignment.center,
        child: BuildText.buildText(
          text: text,
          color: textColor??Colors.white,
          size: textSize??14,
          weight: FontWeight.w500,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

typedef CalbackFunction = void Function();

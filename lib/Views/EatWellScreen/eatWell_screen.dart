import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../Controllers/Utils/BuildText/BuildText.dart';
import 'eatWell_screen_controller.dart';


class EatWellScreen extends StatelessWidget {
  EatWellScreenController _eatWellCtrl= Get.put(EatWellScreenController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _eatWellCtrl,
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Center(child: Text('Eat well',textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontSize: 18),)),
            ),
            leading: Icon(Icons.menu, color: Colors.blue,),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/svg/body.svg', height: 20, color: Colors.lightGreen,),
                    buildSizeBox(0.0, 20.0),
                    BuildText.buildText(
                        text: 'Eat Well',
                        color: Colors.lightGreen,
                        size: 14),
                  ],
                ),
                buildSizeBox(8.0, 0.0),
                Divider(color: Colors.lightGreen, indent: 2, endIndent: 10,),
                buildSizeBox(8.0, 0.0),
                Row(
                  children: [
                    SvgPicture.asset('assets/svg/grocery.svg', height: 20, color: Colors.lightGreen,),
                    buildSizeBox(0.0, 20.0),
                    BuildText.buildText(
                        text: 'Thematic',
                        color: Colors.lightGreen,
                        size: 14),
                  ],
                ),
                buildSizeBox(8.0, 0.0),
                Divider(color: Colors.lightGreen, indent: 2, endIndent: 10,),
                buildSizeBox(8.0, 0.0),
                Row(
                  children: [
                    SvgPicture.asset('assets/svg/faq.svg', height: 20, color: Colors.lightGreen,),
                    buildSizeBox(0.0, 20.0),
                    BuildText.buildText(
                        text: 'FAQ',
                        color: Colors.lightGreen,
                        size: 14),
                  ],
                ),


              ],
            ),
          ),
        );
      },);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eatwell/Controllers/Utils/BuildText/BuildText.dart';
import 'package:eatwell/Controllers/Utils/CustomAppBar.dart';

import 'home_screeen_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
final HomeScreenController _homeCtrl = Get.put(HomeScreenController());
  List foodTitleList = [
    "Cookies au chocolate",
    "Cake la farine dde mais",
    "Crumble aux pommes",
    "Aubergine girlle sauce",
    "Cremeux de lentiles ","Cookies au chocolate",
    "Cake la farine dde mais",
    "Crumble aux pommes",
    "Aubergine girlle sauce",
    "Cremeux de lentiles ","Cookies au chocolate",
    "Cake la farine dde mais",
    "Crumble aux pommes",
    "Aubergine girlle sauce",
    "Cremeux de lentiles ","Cookies au chocolate",
    "Cake la farine dde mais",
    "Crumble aux pommes",
    "Aubergine girlle sauce",
    "Cremeux de lentiles ","Cookies au chocolate",
    "Cake la farine dde mais",
    "Crumble aux pommes",
    "Aubergine girlle sauce",
    "Cremeux de lentiles ",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SafeArea(child: Container(

      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(

        color: Colors.white,

      ),
      child: ListView

        .builder(

        itemCount: foodTitleList.length,
        itemBuilder: (context, index) {

          return Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  height: 100,width: 120,decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.jpg')
                  )
                ),
                ),
                buildSizeBox(5.0, 5.0),
                Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                  BuildText.buildText(text: foodTitleList[index].toString(),color: Colors.black,size: 16)

                  ,
                  buildSizeBox(5.0, 0.0),
                  Container(


                    padding: EdgeInsets.symmetric(horizontal: 5,vertical: 0),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey.withOpacity(0.4),

                      ),
                      child: BuildText.buildText(text: "Plats",

                          color: Colors.green,)),
                  buildSizeBox(5.0, 0.0),
                  Row(children: [
                    Icon(Icons.heart_broken,size: 14,color: Colors.grey.withOpacity(0.5),),
                    Icon(Icons.heart_broken,size: 14,color: Colors.grey.withOpacity(0.5),),
                    Icon(Icons.heart_broken,size: 14,color: Colors.grey.withOpacity(0.5),),
                    Icon(Icons.heart_broken,size: 14,color: Colors.grey.withOpacity(0.5),),
                    Icon(Icons.heart_broken,size: 14,color: Colors.grey.withOpacity(0.5),),
                  ],)
                ],),
                Spacer(),
                IconButton(onPressed: () {

                },   icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,))
              ],
            ),
          );
        },)),
    ));
  }
}

import 'dart:ffi';

import 'package:eatwell/Views/ProfileDrawer/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:eatwell/Controllers/Utils/BuildText/BuildText.dart';
import 'package:eatwell/Controllers/Utils/CustomAppBar.dart';

import 'home_screeen_controller.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeScreenController _homeCtrl = Get.put(HomeScreenController());

  List foodTitleList = [
    "Cookies au chocolate",
    "Cake la farine dde mais",
    "Crumble aux pommes",
    "Aubergine girlle sauce",
    "Cremeux de lentiles ",
    "Cookies au chocolate",
    "Cake la farine dde mais",
    "Crumble aux pommes",
    "Aubergine girlle sauce",
    "Cremeux de lentiles ",
    "Cookies au chocolate",
    "Cake la farine dde mais",
  ];

  // @override
  // void initState() {
  //   super.initState();
  //   setState(() {
  //     _homeCtrl.loginAPiHit(context: context);
  //   });
  //   // Initialization code here
  // }

  List foodSubTitleList = [
    "Deserts",
    "Gateau",
    "plats",
    "Deserts",
    "Gateau",
    "plats",
    "Deserts",
    "Gateau",
    "plats",
    "Deserts",
    "Gateau",
    "plats",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: Center(
                child: Text(
              "Home",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white),
            )),
          ),
          leading: InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ProfileScreen()),
              );
            },
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        //appBar: CustomAppBar(text: 'Home', leadingColor:Colors.white,  ),
        body: SafeArea(
          child: Container(
              height: Get.height,
              width: Get.width,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: ListView.builder(
                itemCount: _homeCtrl.recipeModel?.result
                    ?.items?.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(),
                    // padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 100,
                              width: 110,
                              decoration: BoxDecoration(),
                              child: Image.network(_homeCtrl.recipeModel?.result?.items?[index].imageLarge.toString() ??'', fit: BoxFit.cover,)
                            ),
                            buildSizeBox(2.0, 6.0),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BuildText.buildText(
                                      text: _homeCtrl.recipeModel?.result
                                              ?.items?[index]?.name ??
                                          "",
                                      color: Colors.black,
                                      size: 14),
                                  buildSizeBox(2.0, 0.0),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width /
                                        1.50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            // width: 60,
                                            height: 30,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 6, vertical: 6),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              color: Colors.lightGreen
                                                  .withOpacity(0.11),
                                            ),
                                            child: BuildText.buildText(
                                              text: _homeCtrl.recipeModel?.result?.items?[index].cname.toString() ??'',
                                              color: Colors.lightGreen,
                                            )),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.grey,
                                              size: 16,
                                            )),
                                      ],
                                    ),
                                  ),
                                  // buildSizeBox(1.0, 0.0),
                                  // Row(
                                  //   children: [
                                  //     SvgPicture.asset('assets/svg/heart-2.svg',height: 18, color: Colors.grey,),
                                  //     SvgPicture.asset('assets/svg/heart-2.svg',height: 18, color: Colors.grey,),
                                  //     SvgPicture.asset('assets/svg/heart-2.svg',height: 18, color: Colors.grey,),
                                  //     SvgPicture.asset('assets/svg/heart-2.svg',height: 18, color: Colors.grey,),
                                  //     SvgPicture.asset('assets/svg/heart-2.svg',height: 18, color: Colors.grey,),
                                  //   ],
                                  // )
                                  RatingBar.builder(
                                    initialRating: _homeCtrl.recipeModel?.result?.items?[index].rating?.toDouble() ?? 0.0,
                                    minRating: 1, glow: true,
                                    // unratedColor: Colors.red,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    // glowColor: Colors.yellow,
                                    itemCount: 5,
                                    itemSize: 20.0,
                                    // itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                                    itemBuilder: (context, i) =>
                                        SvgPicture.asset(
                                      'assets/svg/heart-2.svg',
                                      height: 3,
                                      width: 10,
                                      color: i <= _homeCtrl.imageIndex.value
                                          ? Colors.lightGreen
                                          : Colors.grey,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                      _homeCtrl.imageIndex.value = rating;
                                      _homeCtrl.update();
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  );
                },
              )),
        ));
  }
}

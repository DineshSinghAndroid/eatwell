import 'package:eatwell/Views/EatWellScreen/SubEatScreen/sub_eat_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../Controllers/Utils/BuildText/BuildText.dart';


class SubEatWellScreen extends StatelessWidget {
  SubEatWellScreenController _subEatWellCtrl= Get.put(SubEatWellScreenController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _subEatWellCtrl,
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            centerTitle: true,
            title: Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Center(child: Text('Eat well',textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontSize: 18),)),
            ),
            leadingWidth: 90, //TODO Adjust leading container width

            leading: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios, color: Colors.blue,),
                  Text('Eat well',textAlign: TextAlign.center, style: TextStyle(color: Colors.blue,fontSize: 16),)
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top:0.0),
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('assets/images/piza.png', fit: BoxFit.fill,),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      itemCount: _subEatWellCtrl.foodTitleList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 2),
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(),
                                child: Image.asset('assets/images/food.png'),
                              ),
                              buildSizeBox(5.0, 5.0),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BuildText.buildText(
                                      text: _subEatWellCtrl.foodTitleList[index].toString(),
                                      color: Colors.black,
                                      size: 16),
                                  buildSizeBox(5.0, 0.0),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 0),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                        color: Colors.grey.withOpacity(0.4),
                                      ),
                                      child: BuildText.buildText(
                                        text: "Plats",
                                        color: Colors.green,
                                      )),
                                  buildSizeBox(5.0, 0.0),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.heart_broken,
                                        size: 14,
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                      Icon(
                                        Icons.heart_broken,
                                        size: 14,
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                      Icon(
                                        Icons.heart_broken,
                                        size: 14,
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                      Icon(
                                        Icons.heart_broken,
                                        size: 14,
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                      Icon(
                                        Icons.heart_broken,
                                        size: 14,
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ))
                            ],
                          ),
                        );
                      },
                    ),
                  )
            
            
                ],
              ),
            ),
          ),
        );
      },);
  }
}

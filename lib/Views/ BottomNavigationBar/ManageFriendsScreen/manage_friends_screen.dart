
import 'package:eatwell/Controllers/LoaderControllers/LoadScreen/LoadScreen.dart';
 import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controllers/Utils/BuildText/BuildText.dart';
import 'manage_friends_controller.dart';

 final ManageFriendsScreenController _searchFrndCtrl = Get.put(ManageFriendsScreenController());
class ManageFriendsScreen extends StatefulWidget {
  @override
  State<ManageFriendsScreen> createState() => _ManageFriendsScreenState();
}

class _ManageFriendsScreenState extends State<ManageFriendsScreen> {
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _searchFrndCtrl,
      builder: (controller) {
      return DefaultTabController(
        length: 3,
        child: Scaffold(

          body: Column(
            children: [TabBar(
              onTap: (v){
                _currentIndex = v;
                setState(() {

                });
              },
              tabs: [

                Tab(text: 'Friends'),
                Tab(text: 'Requests'),
                Tab(text: 'Invitations'),
              ],
            ),

              TabBarView(

                children: [
                  Center(child: BuildText.buildText(text:'You have no friends at this moment.')),
                  Center(child: BuildText.buildText(text:'You have no requests at this moment.')),
                  Center(child: BuildText.buildText(text:'You have no invitations at this moment.')),
                ],
              ),
            ],
          ),

        ),
      );
    },);

  }
}


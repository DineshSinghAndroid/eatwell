import 'package:eatwell/Controllers/LoaderControllers/LoadScreen/LoadScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controllers/Utils/BuildText/BuildText.dart';
import '../../../Controllers/Utils/CustomAppBar.dart';
import 'manage_friends_controller.dart';

final ManageFriendsScreenController _searchFrndCtrl =
    Get.put(ManageFriendsScreenController());

class ManageFriendsScreen extends StatefulWidget {
  @override
  State<ManageFriendsScreen> createState() => _ManageFriendsScreenState();
}

class _ManageFriendsScreenState extends State<ManageFriendsScreen> with TickerProviderStateMixin {
  int _currentIndex = 0;

   late TabController tabController = TabController(vsync: this, length: 3);

  //@override
  // void initState() {
  //   super.initState();
  //   tabController = new TabController(vsync: this, length: 3,
  //     initialIndex: 0,);
  // }

  // tabController.animateTo(_currentTabIndex);

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _searchFrndCtrl,
      builder: (controller) {
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            //appBar: CustomAppBar(text: 'My Friends', leadingColor:Colors.white, restaurantFilter: Icons.add ),
            appBar: AppBar(
              backgroundColor: Colors.lightGreen,
              title: Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Center(child: Text("My Friends", textAlign: TextAlign.center, style: TextStyle(fontSize: 18, color: Colors.white),)),
              ),
              leading: Icon(Icons.menu, color: Colors.white,),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.add,size: 25, color: Colors.white,),
                ),
              ],
            ),
            body: Column(
              children: [
                TabBar(
                  controller: tabController,
                  onTap: (v) {
                    _currentIndex = v;
                    setState(() {});
                  },
                  indicatorColor: Colors.lightGreen,
                  labelStyle: TextStyle(fontSize: 14.0,color: Colors.lightGreen),  //For Selected tab
                  unselectedLabelStyle: TextStyle(fontSize: 14.0,color: Colors.lightGreen),
                  tabs: [
                    Tab(text: 'Friends'),
                    Tab(text: 'Requests'),
                    Tab(text: 'Invitations'),
                  ],
                ),
                Container(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height/1.80,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Center(
                          child: BuildText.buildText(
                              text: 'You have no friends at this moment.', color: Colors.black)),
                      Center(
                          child: BuildText.buildText(
                              text: 'You have no requests at this moment.')),
                      Center(
                          child: BuildText.buildText(
                              text: 'You have no invitations at this moment.')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

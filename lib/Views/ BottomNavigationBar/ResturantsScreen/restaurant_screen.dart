import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controllers/Utils/CustomAppBar.dart';
import '../../searchRestrauntScreen/searchRestranutController.dart';

class RestruantScreen extends StatelessWidget {
  SearchRestruauntController _searchRestroCtrl= Get.put(SearchRestruauntController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _searchRestroCtrl,
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          centerTitle: true,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Center(child: Text('Restaurants',textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontSize: 18),)),
              ),
              SizedBox(width: 12,),
              Icon(Icons.add,size: 30,color: Colors.white,),
              SizedBox(width: 6,),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(Icons.search,color: Colors.white,),
              ),
              Row(
                children: [
                  Image.asset('assets/images/filter.png',color: Colors.white, height: 40,),
                  Text('(0)', style: TextStyle(color: Colors.white, fontSize: 16),)
                ],
              ),
            ],
          ),
          leadingWidth: 75, //TODO Adjust leading container width
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios, color: Colors.blue,),
                Text('Store',textAlign: TextAlign.center, style: TextStyle(color: Colors.blue,fontSize: 16),)
              ],
            ),
          ),
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.only(right: 18.0),
          //     child: Icon(Icons.search,color: Colors.white,),
          //   ),
          //   Padding(
          //     padding: const EdgeInsets.only(right: 12.0),
          //     child: Row(
          //       children: [
          //         Image.asset('assets/images/filter.png',color: Colors.white, height: 40,),
          //         Text('(0)', style: TextStyle(color: Colors.white, fontSize: 16),)
          //       ],
          //     ),
          //   )
          //
          // ],
        ),
          //appBar: CustomAppBar(text: 'Restaurants', leadingColor:Colors.white, restaurantAdd: Icons.add, restaurantSearch: Icons.search, restaurantFilter: 'assets/images/filter.png' , restaurantFilterText: '(0)'  ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text('Yot are not connected'),
            )
          ),
        );
      },);
  }
}

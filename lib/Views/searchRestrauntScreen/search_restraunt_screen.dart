 import 'package:eatwell/Views/searchRestrauntScreen/searchRestranutController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controllers/Utils/BuildText/BuildText.dart';


class SearchRestruantScreen extends StatelessWidget {
  SearchRestruauntController _searchRestroCtrl= Get.put(SearchRestruauntController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _searchRestroCtrl,
      builder: (controller) {
      return Scaffold(

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Country',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Region',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  labelText: 'City',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              MaterialButton(
                onPressed: (){},
                child: BuildText.buildText(text:'Search'),
                color:  Colors.green,
              ),
            ],
          ),
        ),
      );
    },);
  }
}

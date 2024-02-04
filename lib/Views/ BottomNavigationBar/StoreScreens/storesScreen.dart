
import 'package:eatwell/Controllers/LoaderControllers/LoadScreen/LoadScreen.dart';
import 'package:eatwell/Views/%20BottomNavigationBar/StoreScreens/storScreenController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controllers/Utils/BuildText/BuildText.dart';


final StoreScreenController _storeCtrl = Get.put(StoreScreenController());
class StoreScreenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _storeCtrl,
      builder: (controller) {
        return LoadScreen(widget: Scaffold(

          body: ListView(
            children: [
              _buildListItem('Restaurant', 'Visit some selected shops who propose healthy products.'),
              _buildListItem('Fromageries', 'Visit some selected shops who propose healthy products.'),
              _buildListItem('Boucheries & charcuteries', 'Visit some selected shops who propose healthy products.'),
              _buildListItem('Poissonneries', 'Visit some selected shops who propose healthy products.'),
              _buildListItem('Épiceries fines', 'Visit some selected shops who propose healthy products.'),
              _buildListItem('Fruits et légumes', 'Visit some selected shops who propose healthy products.'),
            ],
          ),
        ), isLoading: _storeCtrl.isLoading);
      },);
  }

  Widget _buildListItem(String title, String description) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.green,
        child: BuildText.buildText(text:title[0], style: TextStyle(color: Colors.white)),
      ),
      title: BuildText.buildText(text:title),
      subtitle: BuildText.buildText(text:description),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}

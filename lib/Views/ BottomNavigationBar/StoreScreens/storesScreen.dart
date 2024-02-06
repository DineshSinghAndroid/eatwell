
import 'package:eatwell/Controllers/LoaderControllers/LoadScreen/LoadScreen.dart';
import 'package:eatwell/Views/%20BottomNavigationBar/StoreScreens/storScreenController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controllers/Utils/BuildText/BuildText.dart';


final StoreScreenController _storeCtrl = Get.put(StoreScreenController());
class StoreScreenScreen extends StatelessWidget {

  List<Color> colors = [Colors.blue, Colors.amber, Colors.pink, Colors.brown, Colors.yellow, Colors.cyanAccent];

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _storeCtrl,
      builder: (controller) {
        return LoadScreen(widget:
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Center(child: Text('Stores', style: TextStyle(color: Colors.white, fontSize: 18),)),
            ),
            leading: Icon(Icons.menu, color: Colors.blue,),
            actions: [],
          ),
          body: ListView(
            children: [
              _buildListItem('Restaurant', 'Visit some selected shops who propose healthy products.', 0),
              _buildListItem('Fromageries', 'Visit some selected shops who propose healthy products.', 1),
              _buildListItem('Boucheries & charcuteries', 'Visit some selected shops who propose healthy products.',2),
              _buildListItem('Poissonneries', 'Visit some selected shops who propose healthy products.',3),
              _buildListItem('Épiceries fines', 'Visit some selected shops who propose healthy products.',4),
              _buildListItem('Fruits et légumes', 'Visit some selected shops who propose healthy products.',5),
            ],
          ),
        ), isLoading: _storeCtrl.isLoading);
      },);
  }

  Widget _buildListItem(String title, String description, int index) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 2)
        ),
        child: CircleAvatar(
          foregroundColor: Colors.white,
          backgroundColor: colors[index],

          child: BuildText.buildText(text:title[0],color: Colors.white, style: TextStyle(color: Colors.white)),
        ),
      ),
      title: BuildTitle.buildTitle(text:title, textAlign: TextAlign.start),
      subtitle: BuildTitle.buildTitle(text:description, color: Colors.grey),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey,),
    );
  }
}

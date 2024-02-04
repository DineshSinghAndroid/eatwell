import 'package:eatwell/Views/%20BottomNavigationBar/StoreScreens/storesScreen.dart';
import 'package:eatwell/Views/%20BottomNavigationBar/searchRestrauntScreen/search_restraunt_screen.dart';
  import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Controllers/Utils/CustomAppBar.dart';
 import '../ProfileDrawer/ProfileScreen.dart';
import 'HomeScreen/home_screen.dart';
import 'ManageFriendsScreen/manage_friends_screen.dart';



class BottomNavigationBarHome extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<BottomNavigationBarHome> {
  int _currentIndex = 0;

  static   List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchRestruantScreen(),
    StoreScreenScreen(),
    ManageFriendsScreen(),
  ];
List appBarnames =[
  "Home",
  "Search Restaurants",
  "Stores",
  "My Friends",
];
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Container(width: Get.width / 1.2, child: ProfileScreen()),

      appBar: CustomAppBar(text: appBarnames.elementAt(_currentIndex)),      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.book),
            label: 'Recipes',
          ),
          BottomNavigationBarItem(  backgroundColor: Colors.green,
            icon: Icon(Icons.restaurant),
            label: 'Restaurants',
          ),
          BottomNavigationBarItem(  backgroundColor: Colors.green,
            icon: Icon(Icons.shop),
            label: 'Shops',
          ),
          BottomNavigationBarItem(  backgroundColor: Colors.green,
            icon: Icon(Icons.person),
            label: 'Friends',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue[700],
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        onTap: _onItemTapped,
      ),
    );
  }
}

import 'package:eatwell/Views/%20BottomNavigationBar/StoreScreens/storesScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Controllers/Utils/Colors/custom_color.dart';
import '../../Controllers/Utils/CustomAppBar.dart';
import '../ProfileDrawer/ProfileScreen.dart';
import 'HomeScreen/home_screen.dart';
import 'ManageFriendsScreen/manage_friends_screen.dart';
import 'ResturantsScreen/restaurant_screen.dart';

class BottomNavigationBarHome extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<BottomNavigationBarHome> {
  int _currentIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    RestruantScreen(),
    StoreScreenScreen(),
    ManageFriendsScreen(),
  ];
  List appBarnames = [
    "Home",
    "Restaurants",
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
      drawer: SizedBox(width: Get.width / 1.2, child: ProfileScreen()),
      //appBar: CustomAppBar(text: appBarnames.elementAt(_currentIndex)),
      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.black,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        currentIndex: _currentIndex, //현재 선택된 Index
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Recipes',
            icon: SvgPicture.asset('assets/svg/recipes.svg', height: 20, color: _currentIndex == 0 ? Colors.lightGreen : Colors.black,)
          ),
          BottomNavigationBarItem(
            label: 'Restaurants',
            icon: SvgPicture.asset('assets/svg/restaurant.svg', height: 20, color: _currentIndex == 1 ? Colors.lightGreen : Colors.black,)
          ),
          BottomNavigationBarItem(
            label: 'Shop',
            icon: SvgPicture.asset('assets/svg/shop.svg', height: 20, color: _currentIndex == 2 ? Colors.lightGreen : Colors.black,)
          ),
          BottomNavigationBarItem(
            label: 'Friends',
            icon: SvgPicture.asset('assets/svg/friends.svg', height: 20, color: _currentIndex == 3 ? Colors.lightGreen : Colors.black,)
          ),
        ],
      ),
    );
  }


}

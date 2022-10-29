import 'package:flutter/material.dart';
import 'package:flutter_assaignment_1/screen/add_screen.dart';
import 'package:flutter_assaignment_1/screen/ads_screen.dart';
import 'package:flutter_assaignment_1/screen/chat_screen.dart';
import 'package:flutter_assaignment_1/screen/home_screen.dart';
import 'package:flutter_assaignment_1/screen/profile_screen.dart';
import 'package:flutter_assaignment_1/widgets/bottom_nav_item.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({Key? key}) : super(key: key);

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}
 const _screen =[
    HomeScreen(),
   AdsScreen(),
   AddScreen(),
   ChatScreen(),
   ProfileScreen(),
 ];
int _currentIndex= 0;
class _BottomNavControllerState extends State<BottomNavController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int selectedIndex){
         setState(() {
           _currentIndex= selectedIndex;
         });
        },
        currentIndex: _currentIndex,
        elevation: 15,
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.black45,
        showUnselectedLabels: true,
        backgroundColor: Colors.black,
        items: [
          bottomNavItem(
              icon: Icons.home_outlined,
              label: "Home"
          ),
          bottomNavItem(
              icon: Icons.shopping_basket_outlined,
              label: "Ads"
          ),
          bottomNavItem(
              icon: Icons.add_circle_outline,
              label: "Add"
          ),
          bottomNavItem(
              icon: Icons.whatsapp_outlined,
              label: "Chat"
          ),
          bottomNavItem(
              icon: Icons.person_outline,
              label: "Account"
          ),

        ],

      ),
      body: _screen[_currentIndex],
    );
  }
}

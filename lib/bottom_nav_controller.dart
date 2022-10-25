import 'package:flutter/material.dart';
import 'package:flutter_assaignment_1/screen/add_screen.dart';
import 'package:flutter_assaignment_1/screen/ads_screen.dart';
import 'package:flutter_assaignment_1/screen/chat_screen.dart';
import 'package:flutter_assaignment_1/screen/home_screen.dart';
import 'package:flutter_assaignment_1/screen/profile_screen.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({Key? key}) : super(key: key);

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}
 final _screen =[
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
        items: const[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,
              // color: Colors.black,
              ),
          label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined),
              label: "Ads"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline),
              label: "Add"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.whatsapp_outlined),
              label: "Chat"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile"
          ),
        ],

      ),
      body: _screen[_currentIndex],
    );
  }
}

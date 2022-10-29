import 'package:flutter/material.dart';

BottomNavigationBarItem bottomNavItem({
  required IconData icon,
  required String label
})
{
  return  BottomNavigationBarItem(
      icon: Icon(icon,size: 30,),
      label: label,
  );
}
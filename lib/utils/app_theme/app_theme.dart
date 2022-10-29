import 'package:flutter/material.dart';
import 'package:flutter_assaignment_1/utils/colors.dart';

import 'app_text_theme.dart';

class AppTheme {

  //Light Theme
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(

      primarySwatch: Colors.deepPurple,
      scaffoldBackgroundColor: lightBgColor,

      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        toolbarHeight: 100,
      ),

      tabBarTheme: const TabBarTheme(
        labelColor: Colors.black,
        labelPadding: EdgeInsets.all(20),
        labelStyle: TextStyle(
          color: Colors.black,
        ),
      ),

      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: lightBgColor,
        elevation: 15,
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.black45,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),

      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(

        ),
      ),

      cardColor: lightCardColor,

      iconTheme: const IconThemeData(
        color: Colors.black,
        size: 30,
      ),

        ////////////////Light Text Theme///////////////
        textTheme: const TextTheme(
            titleLarge: TextStyle(
              color: Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.w700,
            ),
          titleMedium: TextStyle(
            color: Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          bodyLarge: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          bodyMedium:  TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
    );
  }


  ///////////////Dark Theme/////////////////
  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(

      primarySwatch: Colors.deepPurple,
      scaffoldBackgroundColor: darkBgColor,

      appBarTheme: const AppBarTheme(
        color: darkBgColor,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        toolbarHeight: 100,
      ),

      tabBarTheme: const TabBarTheme(
       labelColor: Colors.white,
        labelPadding: EdgeInsets.all(20),
        labelStyle: TextStyle(
          color: Colors.black,
        ),
      ),

      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: darkBgColor,
        elevation: 15,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),

      elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(

          ),
      ),

      cardColor: darkCardColor,

    iconTheme: const IconThemeData(
      color: Colors.white,
      size: 30,
    ),

    //////////Dark Text Theme//////////
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.white,
          fontSize: 35,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: Colors.white54,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        bodyMedium:  TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_assaignment_1/bottom_nav_controller.dart';
import 'package:flutter_assaignment_1/utils/app_theme/app_theme.dart';
import 'package:flutter_assaignment_1/widgets/grid_single_product.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(400,850),
      builder: (BuildContext context, Widget? child) {
        return  MaterialApp(
          theme: AppTheme.lightTheme(context),
          darkTheme: AppTheme.darkTheme(context),
          themeMode: ThemeMode.dark,
          debugShowCheckedModeBanner: false,
          home: const BottomNavController(),
        );
      },
    );
  }
}


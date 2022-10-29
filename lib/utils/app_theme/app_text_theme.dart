import 'package:flutter/material.dart';

TextTheme appTextTheme({TextStyle? headerTextStyle1,bodyTextStyle,smallTextStyle}) {
  return TextTheme(
    headline1: headerTextStyle1,
    bodyText1: bodyTextStyle,
    bodySmall: smallTextStyle,
  );
}
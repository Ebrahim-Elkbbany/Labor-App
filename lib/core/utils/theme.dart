import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/constant.dart';

ThemeData lightTheme=ThemeData(
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    showSelectedLabels: false,
    showUnselectedLabels: false,
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedItemColor: kPrimaryColor,
    elevation: 0,
    unselectedItemColor: Colors.grey,
  ),
  primaryColor: kPrimaryColor,
  unselectedWidgetColor: kPrimaryColor,
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme:  AppBarTheme(

    iconTheme: IconThemeData(color: Colors.black,size: 24.w),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    toolbarHeight: 58,
  ),
  fontFamily: 'Quicksand',
);
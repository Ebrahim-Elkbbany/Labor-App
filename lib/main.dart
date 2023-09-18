import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:labor_app/constant.dart';
import 'package:labor_app/features/splash/presentation/views/splash_view.dart';


void main(){
  runApp(const LaborApp());
}
class LaborApp extends StatelessWidget {
  const LaborApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
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
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: Colors.white,elevation: 0,toolbarHeight: 58,),
        fontFamily:'Quicksand',
      ),
      home: const SplashView(),
    );
  }
}

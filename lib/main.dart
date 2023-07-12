import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:labor/constant.dart';
import 'package:labor/views/splash_view.dart';

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
        primaryColor: kPrimaryColor,
        unselectedWidgetColor: kPrimaryColor,
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: Colors.white,elevation: 0,toolbarHeight: 50,),
        fontFamily:'Quicksand',
      ),
      home: const SplashView(),
    );
  }
}

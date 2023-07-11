import 'package:flutter/material.dart';
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
      theme: ThemeData.light(),
      home: const SplashView(),
    );
  }
}

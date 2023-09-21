import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/features/splash/presentation/views/splash_view.dart';

import 'core/utils/theme.dart';

void main() {
  runApp(const LaborApp());
}

class LaborApp extends StatelessWidget {
  const LaborApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          home: const SplashView(),
        );
      },
    );

  }
}

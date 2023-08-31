import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:labor/constant.dart';
import 'package:labor/views/select_language_view.dart';
import 'package:labor/views/widgets/splash_view_body.dart';

import '../custom_widgets/navigator_push_remove_until.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => navigatorAndFinish(const SelectLanguageView(),context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: kPrimaryColor,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      backgroundColor: kPrimaryColor,
      body: const SplashViewBody(),
    );
  }
}

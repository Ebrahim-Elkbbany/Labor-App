import 'package:flutter/material.dart';
import 'package:labor_app/core/utils/assets.dart';
class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(image: AssetImage(AssetsData.labor)),
    );
  }
}

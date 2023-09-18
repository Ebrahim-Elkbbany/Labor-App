import 'package:flutter/material.dart';
class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(image: AssetImage('assets/images/labor.png')),
    );
  }
}

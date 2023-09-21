import 'package:flutter/material.dart';
import 'package:labor_app/core/utils/assets.dart';
import 'package:labor_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FFF6),
      appBar: AppBar(
        title: Image.asset(
          AssetsData.homeViewLogo,
          height: 28,
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.notification_add_outlined,
          size: 28,
        ),
      ),
      body: const HomeViewBody(),
    );
  }
}

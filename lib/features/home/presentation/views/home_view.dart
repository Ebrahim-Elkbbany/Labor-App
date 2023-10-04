import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          height: 28.41.h,
          width: 94.w,
          fit: BoxFit.contain,
        ),
        centerTitle: true,
        leading:  Padding(
          padding:  EdgeInsets.only(left: 20.w),
          child: Icon(
            Icons.notification_add_outlined,
            size: 24.w,
          ),
        ),
      ),
      body: const HomeViewBody(),
    );
  }
}

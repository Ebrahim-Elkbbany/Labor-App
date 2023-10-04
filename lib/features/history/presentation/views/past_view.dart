import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/core/utils/assets.dart';
import 'package:labor_app/features/history/presentation/views/widgets/past_container.dart';

class PastView extends StatelessWidget {
  const PastView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: const Color(0xffF9FFF6),
        child: ListView(
          padding:  EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: 24.h,
          ),
          children: const [
            PastContainer(
              isDone: true,
              image: AssetsData.ontractCleaning2,
              companyName: 'Nile Company',
              price: '650',
            ),
            PastContainer(
              isDone: true,
              image: AssetsData.ontractCleaning,
              companyName: 'United Group Company',
              price: '1500',
            ),
            PastContainer(
              isDone: false,
              image: AssetsData.ontractCleaning2,
              companyName: 'Nile Company',
              price: '650',
            ),
          ],
        ),
      ),
    );
  }
}

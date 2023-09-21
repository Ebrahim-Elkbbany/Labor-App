import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/core/utils/assets.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';

class CustomGoogleContainer extends StatelessWidget {
  const CustomGoogleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffF9FFF6),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xffDFDFDF),
        ),
      ),
      height: 64.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetsData.google,
            height: 32.h,
            width: 32.w,
            fit: BoxFit.contain,
          ),
           SizedBox(
            width: SizeConfig.width(context, 12),
          ),
           Text(
            'Google',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

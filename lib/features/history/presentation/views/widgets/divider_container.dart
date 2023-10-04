import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/constant.dart';

class DividerContainer extends StatelessWidget {
  const DividerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8.w,
      height: 4.h,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

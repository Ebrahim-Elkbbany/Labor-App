import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/core/utils/assets.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/utils/styles.dart';
import 'package:labor_app/features/onBoarding/data/models/on_boarding_model.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({Key? key, required this.onBoardingModel})
      : super(key: key);
  final OnBoardingModel onBoardingModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.w),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  AssetsData.onBoardingVector,
                  height: 291.h,
                  width: double.infinity,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 64.w),
                  child: Image.asset(
                     fit: BoxFit.contain,
                    onBoardingModel.image,
                    height: 299.h,
                    width: double.infinity,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.height(context, 57),
        ),
        Text(
          onBoardingModel.text,
          style: Styles.textStyle34,
        ),
        SizedBox(
          height: SizeConfig.height(context, 26),
        ),
        Text(
          onBoardingModel.subText,
          style:  TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

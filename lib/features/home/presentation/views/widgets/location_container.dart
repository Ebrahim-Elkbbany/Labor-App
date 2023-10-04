import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/core/utils/assets.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';

class LocationContainer extends StatelessWidget {
  const LocationContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff4B8673),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 64.h,
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 17.w, vertical: 8.h),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                const CircleAvatar(
                  minRadius: 25,
                  backgroundColor: Colors.white,
                ),
                Image.asset(
                  AssetsData.subtract,
                ),
              ],
            ),
             SizedBox(
              width: SizeConfig.width(context, 17),
            ),
             Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'your location',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Jiddah Alexander Language School , ALS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

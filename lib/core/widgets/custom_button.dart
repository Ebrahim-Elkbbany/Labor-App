import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/constant.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonName, this.onTap,this.radiusCircular=16,this.height ,this.width=double.infinity,this.fontSize,  this.color =kPrimaryColor});
  final String buttonName;
  final VoidCallback? onTap;
  final double radiusCircular;
  final double ? height ;
  final double width;
  final double ?fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radiusCircular),
        ),
        height: height ?? 60.h,
        width: width,
        child: Center(
          child: Text(
            buttonName,
            style:  TextStyle(
              color: Colors.white,
              fontSize: fontSize ?? 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

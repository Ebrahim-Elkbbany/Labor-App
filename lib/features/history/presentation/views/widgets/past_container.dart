import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:labor_app/constant.dart';
import 'package:labor_app/core/widgets/custom_button.dart';

import '../../../../../core/utils/resposive_size_config.dart';
import '../../../../../core/utils/styles.dart';

class PastContainer extends StatelessWidget {
  const PastContainer({
    super.key,
    required this.isDone,
    required this.image,
    required this.companyName,
    required this.price,
  });

  final bool isDone;
  final String image;
  final String companyName;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 31.h),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16).w,
        ),
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.h, vertical: 17.h),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'contract cleaning',
                        style: Styles.textStyle16.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '25ds458126fs5dha',
                        style: Styles.textStyle12.copyWith(
                          color: const Color(0xffB5B5B5),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CustomButton(
                    buttonName: isDone == true ? 'Done' : 'Cancel',
                    color: isDone == true
                        ? kPrimaryColor
                        : const Color(0xffF84D4D),
                    width: 80.w,
                    height: 30.h,
                    fontSize: 12.sp,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0.h),
                child: const Divider(
                  thickness: 0.2,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Image.asset(
                      image,
                      width: 40.w,
                      height: 40.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.width(context, 13),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        companyName,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: const Color(0xffFDCF2D),
                            size: 15.w,
                          ),
                          Icon(
                            Icons.star,
                            color: const Color(0xffFDCF2D),
                            size: 15.w,
                          ),
                          Icon(
                            Icons.star,
                            color: const Color(0xffFDCF2D),
                            size: 15.w,
                          ),
                          Icon(
                            Icons.star,
                            color: const Color(0xffFDCF2D),
                            size: 15.w,
                          ),
                          Icon(
                            Icons.star,
                            color: const Color(0xffFDCF2D),
                            size: 15.w,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    '22/7/2022',
                    style: TextStyle(
                      color: const Color(0xffB5B5B5),
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                child: const Divider(
                  thickness: 0.2,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '1 Filipino worker under contract',
                    style: TextStyle(
                      color: const Color(0xffB5B5B5),
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                    ),
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                          color: const Color(0xffB5B5B5),
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                        ),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

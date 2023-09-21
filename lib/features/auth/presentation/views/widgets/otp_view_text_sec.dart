import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/utils/styles.dart';

class OTPViewTextSec extends StatelessWidget {
  const OTPViewTextSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       Center(
         child: Text('OTP', style: Styles.textStyle28),
       ),
       SizedBox(
         height: SizeConfig.height(context, 18),
       ),
       Center(
         child: Text(
           'An Authentication code has been sent to \n(+02) 01003625286 .',
           textAlign: TextAlign.center,
           style: Styles.textStyle14.copyWith(
             color: const Color(0xffB5B5B5),
             height: 1.8.h,
           ),
         ),
       ),
     ],
    );
  }
}

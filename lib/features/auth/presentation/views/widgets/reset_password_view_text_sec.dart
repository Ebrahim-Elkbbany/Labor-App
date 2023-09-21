import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/utils/styles.dart';

class ResetPasswordTextSec extends StatelessWidget {
  const ResetPasswordTextSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Reset Password',
            style: Styles.textStyle28,
          ),
        ),
        SizedBox(
          height: SizeConfig.height(context, 21),
        ),
        Center(
          child: Text(
              'Create strong and secured \nnew password.',
              textAlign: TextAlign.center,
              style: Styles.textStyle14.copyWith(
                height: 1.8,
                color: const Color(0xffB5B5B5),
              )
          ),
        ),
      ],
    );
  }
}

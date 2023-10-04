import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/constant.dart';
import 'package:labor_app/core/widgets/custom_text_button.dart';
import 'package:labor_app/core/widgets/navigator_push_.dart';
import 'package:labor_app/features/profile/presentation/views/payment_view.dart';

class CompletePaymentButton extends StatelessWidget {
  const CompletePaymentButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 4.0.h),
          child: const Divider(
            thickness: 0.2,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 34.h,
              child: CustomTextButton(
                onPressed: () {
                  navigatorPush(const PaymentView(), context);
                },
                text: 'Complete payment methods',
                color: kPrimaryColor,
                sizeText: 14.sp,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: kPrimaryColor,
              size: 16.w,
            ),
          ],
        ),
      ],
    );
  }
}

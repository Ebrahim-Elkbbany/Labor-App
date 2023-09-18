import 'package:flutter/material.dart';
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
        const Padding(
          padding: EdgeInsets.only(top: 4.0),
          child: Divider(
            thickness: 0.2,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 34,
                child: CustomTextButton(
                  onPressed: () {
                    navigatorPush(const PaymentView(), context);
                  },
                  text: 'Complete payment methods',
                  color: kPrimaryColor,
                  sizeText: 14,
                )),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios_outlined,
                color: kPrimaryColor, size: 16),
          ],
        ),
      ],
    );
  }
}
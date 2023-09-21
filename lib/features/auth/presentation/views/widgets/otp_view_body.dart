import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/constant.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/utils/styles.dart';
import 'package:labor_app/core/widgets/custom_button.dart';
import 'package:labor_app/features/auth/presentation/views/reset_password_view.dart';
import 'package:labor_app/features/auth/presentation/views/widgets/otp_view_text_sec.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:otp_text_field/otp_text_field.dart';

class OTPViewBody extends StatelessWidget {
  const OTPViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    var otpController = OtpFieldController();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OTPViewTextSec(),
              SizedBox(
                height: SizeConfig.height(context, 28),
              ),
              OTPTextField(
                otpFieldStyle: OtpFieldStyle(
                  focusBorderColor: kPrimaryColor,
                ),
                controller: otpController,
                length: 5,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.center,
                fieldWidth: 48.w,
                spaceBetween: 32.w,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 8,
                style: Styles.textStyle24,
              ),
              SizedBox(
                height: SizeConfig.height(context, 48),
              ),
              CustomButton(
                buttonName: 'Submit',
                radiusCircular: 8,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ResetPasswordView(),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.height(context, 32),
              ),
              Center(
                child: Text(
                  'Code Sent. Resend Code in 00:50',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle14.copyWith(
                    height: 1,
                    color: const Color(0xffB5B5B5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

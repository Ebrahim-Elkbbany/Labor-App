import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/utils/styles.dart';
import 'package:labor_app/core/widgets/custom_button.dart';
import 'package:labor_app/core/widgets/custom_text_form_field.dart';
import 'package:labor_app/features/auth/presentation/views/otp_view.dart';
import 'package:labor_app/features/auth/presentation/views/widgets/forget_password_view_text_sec.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    var phoneController = TextEditingController();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ForgetPasswordViewTextSec(),
               SizedBox(
                height: SizeConfig.height(context, 18),
              ),
               Text(
                'Phone',
                style: Styles.textStyle16,
              ),
              SizedBox(
                height: SizeConfig.height(context, 8),
              ),
              CustomTextFormField(
                controller: phoneController,
                type: TextInputType.phone,
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your phone';
                  } else {
                    return null;
                  }
                },
                label: 'Enter Your Phone',
                suffix: Icons.phone,
              ),
              SizedBox(
                height: SizeConfig.height(context, 54),
              ),
              CustomButton(
                buttonName: 'Reset Password',
                radiusCircular: 8,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OTPView(),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/widgets/custom_button.dart';
import 'package:labor_app/core/widgets/custom_text_button.dart';
import 'package:labor_app/core/widgets/navigator_push_remove_until.dart';
import 'package:labor_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:labor_app/features/auth/presentation/views/widgets/login_view_or_sec.dart';
import 'package:labor_app/features/auth/presentation/views/widgets/login_view_text_field_sec.dart';
import 'package:labor_app/features/auth/presentation/views/widgets/login_view_text_sec.dart';
import 'package:labor_app/features/layout/presentation/views/bottom_nav_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var passwordController = TextEditingController();
    var phoneController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey();
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: SizeConfig.height(context, 58),
                ),
                const LoginViewTextSec(),
                SizedBox(
                  height: SizeConfig.height(context, 18),
                ),
                LoginViewTextFieldSec(
                  passwordController: passwordController,
                  phoneController: phoneController,
                ),
                SizedBox(
                  height: SizeConfig.height(context, 16),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomTextButton(
                    text: 'Forget Password ?',
                    color: Colors.black,
                    sizeText: 16.sp,
                    fontWeight: FontWeight.w500,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgetPasswordView(),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.height(context, 16)),
                CustomButton(
                  buttonName: 'Login',
                  radiusCircular: 8,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      navigatorAndFinish(const LayoutView(), context);
                    }
                  },
                ),
                SizedBox(
                  height: SizeConfig.height(context, 16),
                ),
                const LoginViewOrSec(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

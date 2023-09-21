import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/utils/styles.dart';
import 'package:labor_app/core/widgets/custom_button.dart';
import 'package:labor_app/core/widgets/navigator_push_remove_until.dart';
import 'package:labor_app/features/auth/presentation/views/widgets/register_view_or_sec.dart';
import 'package:labor_app/features/auth/presentation/views/widgets/register_view_text_field_sec.dart';
import 'package:labor_app/features/auth/presentation/views/widgets/register_view_text_sec.dart';
import 'package:labor_app/features/layout/presentation/views/bottom_nav_view.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    var passwordController = TextEditingController();
    var phoneController = TextEditingController();
    var nameController = TextEditingController();
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
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
                const RegisterViewTextSec(),
                SizedBox(
                  height: SizeConfig.height(context, 18),
                ),
                RegisterViewTextFieldSec(
                  passwordController: passwordController,
                  nameController: nameController,
                  phoneController: phoneController,
                ),
                SizedBox(
                  height: SizeConfig.height(context, 48),
                ),
                CustomButton(
                  buttonName: 'Register',
                  radiusCircular: 8,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      navigatorAndFinish(const LayoutView(), context);
                    }
                  },
                ),
                SizedBox(
                  height: SizeConfig.height(context, 15),
                ),
                const RegisterViewOrSec(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

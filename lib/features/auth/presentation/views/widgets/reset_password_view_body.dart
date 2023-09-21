import 'package:flutter/material.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/widgets/custom_button.dart';
import 'package:labor_app/core/widgets/navigator_push_remove_until.dart';
import 'package:labor_app/features/auth/presentation/views/login_view.dart';
import 'package:labor_app/features/auth/presentation/views/widgets/reset_password_view_text_field_sec.dart';
import 'package:labor_app/features/auth/presentation/views/widgets/reset_password_view_text_sec.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    var passwordController = TextEditingController();
    var confirmPasswordController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ResetPasswordTextSec(),
              SizedBox(
                height: SizeConfig.height(context, 21),
              ),
              ResetPasswordViewTextFieldSec(
                passwordController: passwordController,
                confirmPasswordController: confirmPasswordController,
              ),
              SizedBox(
                height: SizeConfig.height(context, 48),
              ),
              CustomButton(
                buttonName: 'Save Password',
                radiusCircular: 8,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    navigatorAndFinish(const LoginView(), context);
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

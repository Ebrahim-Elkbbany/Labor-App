import 'package:flutter/material.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/utils/styles.dart';
import 'package:labor_app/core/widgets/custom_text_form_field.dart';

class ResetPasswordViewTextFieldSec extends StatelessWidget {
  const ResetPasswordViewTextFieldSec({Key? key, this.passwordController, this.confirmPasswordController}) : super(key: key);
  final TextEditingController? passwordController;
  final TextEditingController?  confirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style:  Styles.textStyle16,
        ),
        SizedBox(
          height: SizeConfig.height(context, 18),
        ),
        CustomTextFormField(
          controller: passwordController,
          type: TextInputType.visiblePassword,
          validate: (value) {
            if (value!.isEmpty) {
              return 'please enter new password';
            } else {
              return null;
            }
          },
          label: 'Enter Your Password',
          suffix: Icons.visibility_outlined,
        ),
        SizedBox(
          height: SizeConfig.height(context, 18),
        ),
        Text(
          'Confirm Password',
          style: Styles.textStyle16,
        ),
        SizedBox(
          height: SizeConfig.height(context, 18),
        ),
        CustomTextFormField(
          controller: confirmPasswordController,
          type: TextInputType.visiblePassword,
          validate: (value) {
            if (value!.isEmpty) {
              return 'please enter confirm password';
            } else {
              return null;
            }
          },
          label: 'Enter Your Confirm Password',
          suffix: Icons.visibility_outlined,
        ),
      ],
    );
  }
}

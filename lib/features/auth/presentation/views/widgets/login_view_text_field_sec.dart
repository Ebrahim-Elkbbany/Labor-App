import 'package:flutter/material.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/utils/styles.dart';
import 'package:labor_app/core/widgets/custom_text_form_field.dart';

class LoginViewTextFieldSec extends StatelessWidget {
  const LoginViewTextFieldSec({Key? key, this.phoneController, this.passwordController}) : super(key: key);
  final TextEditingController? phoneController;
  final TextEditingController? passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
        'Phone',
        style: Styles.textStyle16,
      ),
        SizedBox(
          height: SizeConfig.height(context, 8),
        ),
        CustomTextFormField(

          controller: phoneController,
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
          height: SizeConfig.height(context, 18),
        ),
        Text(
          'Password',
          style: Styles.textStyle16,
        ),
        SizedBox(
          height: SizeConfig.height(context, 8),
        ),
        CustomTextFormField(
          validate: (value) {
            if (value!.isEmpty) {
              return 'please enter your password';
            } else {
              return null;
            }
          },
          type: TextInputType.visiblePassword,
          controller: passwordController,
          label: 'Enter Your Password',
          suffix: Icons.visibility_outlined,
        ),],
    );
  }
}

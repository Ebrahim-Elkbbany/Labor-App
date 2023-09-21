import 'package:flutter/material.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/utils/styles.dart';
import 'package:labor_app/core/widgets/custom_text_form_field.dart';

class RegisterViewTextFieldSec extends StatelessWidget {
  const RegisterViewTextFieldSec({Key? key, this.phoneController, this.passwordController, this.nameController}) : super(key: key);
  final TextEditingController? phoneController;
  final TextEditingController? passwordController;
  final TextEditingController? nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Full Name',
          style: Styles.textStyle16,
        ),
        SizedBox(
          height: SizeConfig.height(context, 8),
        ),
        CustomTextFormField(
          controller: nameController,
          type: TextInputType.name,
          label: 'Enter Your Name',
          suffix: Icons.person,
          validate: (value) {
            if (value!.isEmpty) {
              return 'please enter your name';
            } else {
              return null;
            }
          },
        ),
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
          label: 'Enter Your Phone',
          validate: (value) {
            if (value!.isEmpty) {
              return 'please enter your phone';
            } else {
              return null;
            }
          },
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
          type: TextInputType.visiblePassword,
          controller: passwordController,
          validate: (value) {
            if (value!.isEmpty) {
              return 'please enter your password';
            } else {
              return null;
            }
          },
          label: 'Enter Your Password',
          suffix: Icons.visibility_outlined,
        ),
      ],
    );
  }
}

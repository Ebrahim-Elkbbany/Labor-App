import 'package:flutter/material.dart';
import 'package:labor/custom_widgets/custom_button.dart';
import 'package:labor/custom_widgets/custom_text_form_field.dart';
import 'package:labor/custom_widgets/navigator_push_remove_until.dart';
import 'package:labor/views/login_view.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  GlobalKey<FormState> formKey = GlobalKey();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Center(
                  child: Text('Reset Password',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w700)),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Center(
                  child: Text(
                    'Create strong and secured \nnew password.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.8,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffB5B5B5),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'Password',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
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
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'Confirm Password',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
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
                const SizedBox(height: 40),
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
      ),
    );
  }
}

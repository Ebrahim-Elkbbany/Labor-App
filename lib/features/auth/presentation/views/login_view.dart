import 'package:flutter/material.dart';
import 'package:labor_app/core/widgets/custom_button.dart';
import 'package:labor_app/core/widgets/custom_facebook_container.dart';
import 'package:labor_app/core/widgets/custom_google_container.dart';
import 'package:labor_app/core/widgets/custom_text_button.dart';
import 'package:labor_app/core/widgets/custom_text_form_field.dart';
import 'package:labor_app/core/widgets/navigator_push_remove_until.dart';
import 'package:labor_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:labor_app/features/auth/presentation/views/register_view.dart';
import 'package:labor_app/features/layout/presentation/views/bottom_nav_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    height: 58,
                  ),
                  const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Center(
                    child: Text(
                      'Please Enter your Phone and password \nto continue',
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
                    height: 20,
                  ),
                  const Text(
                    'Phone',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  CustomTextFormField(
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
                  const SizedBox(height: 16),
                  const Text(
                    'Password',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
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
                  ),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CustomTextButton(
                      text: 'Forget Password ?',
                      color: Colors.black,
                      sizeText: 16,
                      fontWeight: FontWeight.w500,
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgetPasswordView(),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomButton(
                    buttonName: 'Login',
                    radiusCircular: 8,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        navigatorAndFinish(const LayoutView(), context);
                      }
                    },
                  ),
                  const SizedBox(height: 16),
                  const Center(
                    child: Text(
                      'OR',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const CustomFaceContainer(),
                  const SizedBox(
                    height: 16,
                  ),
                  const CustomGoogleContainer(),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don’t Have Account ?',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      CustomTextButton(
                        text: 'Sign Up',
                        color: Colors.black,
                        sizeText: 16,
                        fontWeight: FontWeight.w700,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterView(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

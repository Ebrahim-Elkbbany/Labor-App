import 'package:flutter/material.dart';
import 'package:labor/core/widgets/custom_button.dart';
import 'package:labor/core/widgets/custom_facebook_container.dart';
import 'package:labor/core/widgets/custom_google_container.dart';
import 'package:labor/core/widgets/custom_text_button.dart';
import 'package:labor/core/widgets/custom_text_form_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 58,
                ),
                Center(
                  child: Text('Login',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w700)),
                ),
                SizedBox(
                  height: 14,
                ),
                Center(
                  child: Text(
                    'Please Enter your Phone and password \nto continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      height:1.8,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffB5B5B5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Phone',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 8),
                CustomTextFormField(
                  label: 'Enter Your Phone',
                  suffix: Icons.phone,
                ),
                SizedBox(height: 16),
                Text(
                  'Password',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 8),
                CustomTextFormField(
                  label: 'Enter Your Password',
                  suffix: Icons.visibility_outlined,
                ),
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomTextButton(
                    text: 'Forget Password ?',
                    color: Colors.black,
                    sizeText: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 16),
                CustomButton(buttonName: 'Login',radiusCircular: 8),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    'OR',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 12),
                CustomFaceContainer(),
                SizedBox(height: 16,),
                CustomGoogleContainer(),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t Have Account ?',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    CustomTextButton(text: 'Sign Up',color: Colors.black,sizeText: 16,fontWeight: FontWeight.w700,)
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

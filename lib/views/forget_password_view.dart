

import 'package:flutter/material.dart';
import 'package:labor/custom_widgets/custom_button.dart';
import 'package:labor/custom_widgets/custom_text_form_field.dart';
import 'package:labor/views/otp_view.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  GlobalKey<FormState> formKey = GlobalKey();
  var  phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

      ),
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
                  child: Text('Forget Password',
                      style:
                      TextStyle(fontSize: 28, fontWeight: FontWeight.w700)),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Center(
                  child: Text(
                    'Enter your Phone Number \nto reset password.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      height:1.8,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffB5B5B5),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'Phone',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                CustomTextFormField(
                  controller: phoneController,
                  type: TextInputType.phone,
                  validate: (value) {
                    if(value!.isEmpty){
                      return 'please enter your phone';
                    }else{
                      return null;
                    }
                  },
                  label: 'Enter Your Phone',
                  suffix: Icons.phone,
                ),
                const SizedBox(height: 50),
                 CustomButton(buttonName: 'Reset Password',radiusCircular: 8,onTap: () {
                   if(formKey.currentState!.validate()){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const OTPView(),));
                   }

                },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

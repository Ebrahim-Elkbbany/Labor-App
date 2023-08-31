

import 'package:flutter/material.dart';
import 'package:labor/constant.dart';
import 'package:labor/custom_widgets/custom_button.dart';
import 'package:labor/views/reset_password_view.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:otp_text_field/otp_text_field.dart';
class OTPView extends StatefulWidget {
  const OTPView({Key? key}) : super(key: key);

  @override
  State<OTPView> createState() => _OTPViewState();
}

class _OTPViewState extends State<OTPView> {
  GlobalKey<FormState> formKey = GlobalKey();
  var otpController =OtpFieldController();
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
                  child: Text('OTP',
                      style:
                      TextStyle(fontSize: 28, fontWeight: FontWeight.w700)),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Center(
                  child: Text(
                    'An Authentication code has been sent to \n(+02) 01003625286 .',
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
                const SizedBox(height: 8),
                OTPTextField(

                  otpFieldStyle: OtpFieldStyle(
                    focusBorderColor: kPrimaryColor,
                  ),
                  controller: otpController,
                  length: 5,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldWidth: 45,
                  fieldStyle:
                  FieldStyle.box,
                  outlineBorderRadius: 8,
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 50),
                CustomButton(buttonName: 'Submit',radiusCircular: 8,onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPasswordView(),)),),
                const SizedBox(height: 25),
                const Center(
                  child: Text(
                    'Code Sent. Resend Code in 00:50',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      height:1,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffB5B5B5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

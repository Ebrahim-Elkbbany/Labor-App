import 'package:flutter/material.dart';
import 'package:labor_app/features/auth/presentation/views/widgets/otp_view_body.dart';

class OTPView extends StatelessWidget {
  const OTPView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: const OTPViewBody(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/utils/styles.dart';

class LoginViewTextSec extends StatelessWidget {
  const LoginViewTextSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Login',
            style: Styles.textStyle28,
          ),
        ),
        SizedBox(
          height: SizeConfig.height(context, 14),
        ),
        Center(
          child: Text(
            'Please Enter your Phone and password \nto continue',
            textAlign: TextAlign.center,
            style: Styles.textStyle14.copyWith(
              color: const Color(0xffB5B5B5),
              height: 1.8,
            ),
          ),
        ),
      ],
    );
  }
}

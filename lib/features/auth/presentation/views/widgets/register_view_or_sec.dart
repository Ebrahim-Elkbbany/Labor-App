import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/utils/styles.dart';
import 'package:labor_app/core/widgets/custom_facebook_container.dart';
import 'package:labor_app/core/widgets/custom_google_container.dart';
import 'package:labor_app/core/widgets/custom_text_button.dart';
import 'package:labor_app/features/auth/presentation/views/login_view.dart';


class RegisterViewOrSec extends StatelessWidget {
  const RegisterViewOrSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Center(
          child: Text(
            'OR',
            style: Styles.textStyle12.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.height(context, 11),
        ),
        const CustomFaceContainer(),
        SizedBox(
          height: SizeConfig.height(context, 18),
        ),
        const CustomGoogleContainer(),
        SizedBox(
          height: SizeConfig.height(context, 24),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Have Account ?',
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            CustomTextButton(
              text: 'Sign in',
              color: Colors.black,
              sizeText: 16.sp,
              fontWeight: FontWeight.w700,
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginView(),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/constant.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/utils/styles.dart';
import 'package:labor_app/core/widgets/custom_button.dart';
import 'package:labor_app/core/widgets/navigator_push_remove_until.dart';
import 'package:labor_app/features/onBoarding/presentation/views/on_boarding_view.dart';

class SelectLanRadioSec extends StatefulWidget {
  const SelectLanRadioSec({Key? key}) : super(key: key);

  @override
  State<SelectLanRadioSec> createState() => _SelectLanRadioSecState();
}

class _SelectLanRadioSecState extends State<SelectLanRadioSec> {
  Object? selectLanguage;
  bool showError = false;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Language',
          style: Styles.textStyle20,
        ),
        SizedBox(
          height: SizeConfig.height(context, 18),
        ),
        RadioListTile(
          activeColor: kPrimaryColor,
          contentPadding: EdgeInsetsDirectional.zero,
          controlAffinity: ListTileControlAffinity.trailing,
          title: Text(
            'English',
            style: Styles.textStyle16,
          ),
          value: 'english',
          groupValue: selectLanguage,
          onChanged: (value) {
            setState(
                  () {
                selectLanguage = value;
                showError = false;
              },
            );
          },
        ),
        Divider(
          height: 0.h,
          thickness: 1.h,
        ),
        RadioListTile(
          activeColor: kPrimaryColor,
          contentPadding: EdgeInsetsDirectional.zero,
          controlAffinity: ListTileControlAffinity.trailing,
          title: Text(
            'Arabic',
            style: Styles.textStyle16,
          ),
          value: 'arabic',
          groupValue: selectLanguage,
          onChanged: (value) {
            setState(
                  () {
                selectLanguage = value;
                showError = false;
              },
            );
          },
        ),
        Divider(
          height: 0.h,
          thickness: 1.h,
        ),
        if (showError == true)
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Center(
              child: Text(
                'Please Select Language',
                style: Styles.textStyle14.copyWith(
                  color: Colors.red,
                ),
              ),
            ),
          ),
        SizedBox(
          height: SizeConfig.height(context, 28),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Text(
            'By creating an account, you agree to our ',
            style: Styles.textStyle12.copyWith(
              color: Colors.grey,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Text(
            'Term and Conditions ',
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              height: 1.8.h,
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.height(context, 46),
        ),
        CustomButton(
          buttonName: 'Enter',
          onTap: () {
            if (selectLanguage == null) {
              setState(
                    () {
                  showError = true;
                },
              );
            } else {
              showError = false;
              navigatorAndFinish(
                const OnBoardingView(),
                context,
              );
            }
          },
        ),
      ],
    );
  }
}

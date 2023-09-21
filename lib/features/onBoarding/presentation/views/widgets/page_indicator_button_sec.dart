import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/widgets/custom_button.dart';
import 'package:labor_app/core/widgets/navigator_push_remove_until.dart';
import 'package:labor_app/features/auth/presentation/views/login_view.dart';
import 'package:labor_app/features/onBoarding/data/models/on_boarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../constant.dart';

class SmoothIndicatorAndButtonSec extends StatelessWidget {
  const SmoothIndicatorAndButtonSec(
      {Key? key, required this.isLast, required this.pageController})
      : super(key: key);
  final bool isLast;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SmoothPageIndicator(
          controller: pageController,
          count: OnBoardingModel.boarding.length,
          effect: ExpandingDotsEffect(
            dotColor: const Color(0xffD9D9D9),
            dotHeight: 9.h,
            dotWidth: 9.w,
            spacing: 5.w,
            activeDotColor: orangePrimaryColor,
          ),
        ),
        SizedBox(
          height: SizeConfig.height(context, 52),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: CustomButton(
            buttonName: isLast == true ? 'Enter' : 'Next',

            onTap: () {
              if (isLast == true) {
                navigatorAndFinish(const LoginView(), context);
              } else {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 700),
                  curve: Curves.fastLinearToSlowEaseIn,
                );
              }
            },
          ),
        ),
      ],
    );
  }
}

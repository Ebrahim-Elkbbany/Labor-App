import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/constant.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/widgets/custom_text_button.dart';
import 'package:labor_app/core/widgets/navigator_push_remove_until.dart';
import 'package:labor_app/features/auth/presentation/views/login_view.dart';
import 'package:labor_app/features/onBoarding/data/models/on_boarding_model.dart';
import 'package:labor_app/features/onBoarding/presentation/views/widgets/on_boarding_item.dart';
import 'package:labor_app/features/onBoarding/presentation/views/widgets/page_indicator_button_sec.dart';


class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController pageController = PageController();
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 70.h,
        actions: [
          if (isLast == false)
            CustomTextButton(
              onPressed: () {
                navigatorAndFinish(const LoginView(), context);
              },
              text: 'Skip',
              color: orangePrimaryColor,
              sizeText: 18.sp,
              fontWeight: FontWeight.bold,
            )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (value) {
                if (value == OnBoardingModel.boarding.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  setState(() {
                    isLast = false;
                  });
                }
              },
              controller: pageController,
              physics: const BouncingScrollPhysics(),
              itemCount: OnBoardingModel.boarding.length,
              itemBuilder: (context, index) => OnBoardingItem(
                onBoardingModel: OnBoardingModel.boarding[index],
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.height(context, 45),
          ),
          SmoothIndicatorAndButtonSec(
            isLast: isLast,
            pageController: pageController,
          ),
          SizedBox(
            height: SizeConfig.height(context, 90),
          ),
        ],
      ),
    );
  }
}

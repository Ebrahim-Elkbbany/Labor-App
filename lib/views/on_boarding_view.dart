import 'package:flutter/material.dart';
import 'package:labor/constant.dart';
import 'package:labor/core/widgets/custom_button.dart';
import 'package:labor/core/widgets/custom_text_button.dart';
import 'package:labor/core/widgets/navigator_push_remove_until.dart';
import 'package:labor/models/on_boarding_model.dart';
import 'package:labor/views/select_language_view.dart';
import 'package:labor/views/widgets/on_boarding_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
        toolbarHeight: 70,
        actions: [
          if (isLast == false)
            CustomTextButton(
              onPressed: () {
                navigatorAndFinish(const SelectLanguageView(), context);
              },
              text: 'Skip',
              color: orangePrimaryColor,
              sizeText: 18,
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
                  onBoardingModel: OnBoardingModel.boarding[index]),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: OnBoardingModel.boarding.length,
            effect: const ExpandingDotsEffect(
              dotColor: Color(0xffD9D9D9),
              dotHeight: 9,
              dotWidth: 9,
              spacing: 5,
              activeDotColor: orangePrimaryColor,
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomButton(
              buttonName: isLast == true ? 'Enter' : 'Next',
              onTap: () {
                if (isLast == true) {
                  navigatorAndFinish(const SelectLanguageView(), context);
                } else {
                  pageController.nextPage(
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.fastLinearToSlowEaseIn);
                }
              },
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

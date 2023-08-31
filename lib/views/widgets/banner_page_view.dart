import 'package:flutter/material.dart';
import 'package:labor/constant.dart';
import 'package:labor/views/bottom_nav_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerPageView extends StatelessWidget {
  const BannerPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 140,
          width: double.infinity,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            controller: pageController,
            physics: const BouncingScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) =>
                Row(
                  children: [
                    Image.asset('assets/images/banner.png'),
                    SizedBox(width: 5,)

                  ],
                ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Align(
          alignment: Alignment.center,
          child: SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect:  const ScaleEffect(
              dotColor: Color(0xffD9D9D9),
              dotHeight: 6,
              dotWidth: 6,
              spacing: 6,
              activeDotColor: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
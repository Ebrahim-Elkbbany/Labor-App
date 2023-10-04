import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/constant.dart';
import 'package:labor_app/core/utils/assets.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
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
        CarouselSlider.builder(
          itemBuilder: (context, index, realIndex) => Image.asset(
            AssetsData.banner,
            fit: BoxFit.contain,
          ),
          itemCount: 3,
          options: CarouselOptions(
            initialPage: 0,
            viewportFraction: 1.0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(seconds: 1),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: ScaleEffect(
              dotColor: Color(0xffD9D9D9),
              dotHeight: 6.h,
              dotWidth: 6.w,
              spacing: 6.w,
              activeDotColor: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}

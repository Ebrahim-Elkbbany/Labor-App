import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/constant.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/utils/styles.dart';
import 'package:labor_app/core/widgets/custom_text_button.dart';
import 'package:labor_app/features/category/presentation/views/categories_view.dart';
import 'package:labor_app/features/category/presentation/views/widgets/categories_grid_view.dart';
import 'package:labor_app/features/home/presentation/views/widgets/banner_page_view.dart';
import 'package:labor_app/features/home/presentation/views/widgets/location_container.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.height(context, 31),
            ),
            Row(
              children: [
                Text('Good Morning', style: Styles.textStyle14),
                SizedBox(
                  width: SizeConfig.width(context, 4),
                ),
                Text(
                  'ebrahim ',
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffF5DF99),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.height(context, 15),
            ),
            Text(
              'Find your home service \nNeed A Helping Hand Today?',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22.sp,
                height: 1.4,
              ),
            ),
            SizedBox(
              height: SizeConfig.height(context, 27),
            ),
            const LocationContainer(),
            BannerPageView(pageController: pageController),
            SizedBox(
              height: SizeConfig.height(context, 18),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Text(
                  'Our services',
                  style: Styles.textStyle18
                ),
                const Spacer(),
                CustomTextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CategoriesView(),
                    ),
                  ),
                  text: 'See ALL',
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w700,
                  sizeText: 12.sp,
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.height(context, 18),
            ),
            const CategoriesGridView(),
          ],
        ),
      ),
    );
  }
}

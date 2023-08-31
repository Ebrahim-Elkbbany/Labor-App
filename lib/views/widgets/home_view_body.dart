import 'package:flutter/material.dart';
import 'package:labor/constant.dart';
import 'package:labor/custom_widgets/custom_text_button.dart';
import 'package:labor/views/categories_view.dart';
import 'package:labor/views/widgets/banner_page_view.dart';
import 'package:labor/views/widgets/categories_grid_view.dart';
import 'package:labor/views/widgets/location_container.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 34,
            ),
            const Row(
              children: [
                Text(
                  'Good Morning',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Maged ',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffF5DF99)),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Find your home service \nNeed A Helping Hand Today?',
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 22, height: 1.4),
            ),
            const SizedBox(
              height: 28,
            ),
            const LocationContainer(),
            const SizedBox(
              height: 28,
            ),
            BannerPageView(pageController: pageController),
            const SizedBox(
              height: 18,
            ),
             Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Our services',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                CustomTextButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CategoriesView(),),),
                  text: 'See ALL',
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w700,
                  sizeText: 12,
                ),
              ],
            ),
            const CategoriesGridView(),
          ],
        ),
      ),
    );
  }
}





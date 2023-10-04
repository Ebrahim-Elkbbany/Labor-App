import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/core/utils/assets.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/utils/styles.dart';
import 'package:labor_app/core/widgets/navigator_push_.dart';
import 'package:labor_app/features/product/presentation/views/product_view.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 6,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 24.w,
          mainAxisSpacing: 12.h,
          childAspectRatio: 171 / 193
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            navigatorPush(const ProductView(), context);
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 10,
            shadowColor: Colors.white24,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsData.categories,
                  fit: BoxFit.cover,
                  width: 89.23.w,
                  height: 94.h,
                ),
                 SizedBox(
                  height: SizeConfig.height(context, 24),
                ),
                 Text(
                  'hourly cleaning',
                  style: Styles.textStyle18
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

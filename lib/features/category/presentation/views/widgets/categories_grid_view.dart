import 'package:flutter/material.dart';
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
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 24,
          mainAxisSpacing: 12,
          childAspectRatio: 171 / 193),
      itemBuilder: (context, index) {
        return  GestureDetector(
          onTap: () {
            navigatorPush(const ProductView(), context);
          },
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
               elevation:10,
            shadowColor: Colors.white24,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/categories.png',
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'hourly cleaning',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

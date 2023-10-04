import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/core/utils/styles.dart';
import 'package:labor_app/features/category/presentation/views/widgets/categories_grid_view.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FFF6),
      appBar: AppBar(
        centerTitle: true,
        title:  Text(
          'Categories',
          style: Styles.textStyle18.copyWith(color: Colors.black)
        ),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 25.h,
          ),
          child: const CategoriesGridView(),
        ),
      ),
    );
  }
}

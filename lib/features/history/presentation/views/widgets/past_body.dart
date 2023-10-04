import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/core/widgets/custom_text_button.dart';
import 'package:labor_app/features/history/presentation/manager/history_cubit/history_cubit.dart';
import 'package:labor_app/features/history/presentation/views/widgets/divider_container.dart';

class PastBody extends StatelessWidget {
  const PastBody({
    super.key,
    required this.cubit,
  });

  final HistoryCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextButton(
          onPressed: () {
            HistoryCubit.get(context).historyNavText(1);
          },
          text: 'Past',
          color: cubit.currentIndex == 1
              ? Colors.black
              : const Color(0xffB5B5B5),
          sizeText: 16.sp,
          fontWeight: FontWeight.w700,
        ),
        if (cubit.currentIndex == 1)
          const DividerContainer(),
      ],
    );
  }
}

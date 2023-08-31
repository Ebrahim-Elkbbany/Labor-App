



import 'package:flutter/material.dart';
import 'package:labor/cubits/history_cubit/history_cubit.dart';
import 'package:labor/custom_widgets/custom_text_button.dart';
import 'package:labor/views/widgets/divider_container.dart';

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
          sizeText: 16,
          fontWeight: FontWeight.w700,
        ),
        if (cubit.currentIndex == 1)
          const DividerContainer(),
      ],
    );
  }
}

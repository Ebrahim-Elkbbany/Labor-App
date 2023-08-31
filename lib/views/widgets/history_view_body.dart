import 'package:flutter/material.dart';
import 'package:labor/constant.dart';
import 'package:labor/cubits/history_cubit/history_cubit.dart';
import 'package:labor/custom_widgets/custom_text_button.dart';
import 'package:labor/views/widgets/divider_container.dart';
import 'package:labor/views/widgets/on_going_body.dart';
import 'package:labor/views/widgets/past_body.dart';

class HistoryViewBody extends StatelessWidget {
  const HistoryViewBody({
    super.key,
    required this.cubit,
  });

  final HistoryCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          OnGoingBody(cubit: cubit),
          PastBody(cubit: cubit),
        ]),
        const SizedBox(
          height: 19,
        ),
        cubit.historyScreens[cubit.currentIndex],
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:labor_app/features/product/presentation/manager/product_cubit/product_cubit.dart';

import '../../../../../core/utils/assets.dart';

class MorningPeriodButton extends StatelessWidget {
  const MorningPeriodButton({
    super.key,
    required this.cubit,
  });

  final ProductCubit cubit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        cubit.changePeriod(true);
        print(5);
      },
      child: Container(
        height: 56,
        width: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color: cubit.isMorning == true
                  ? const Color(0xffF5DF99)
                  : Colors.white,
              width: 2.5),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(AssetsData.morningPeriod),
          const SizedBox(
            width: 8,
          ),
          const Text('Morning',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        ]),
      ),
    );
  }
}

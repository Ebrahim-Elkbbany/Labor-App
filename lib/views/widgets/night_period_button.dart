import 'package:flutter/material.dart';
import 'package:labor/cubits/product_cubit/product_cubit.dart';

class NightPeriodButton extends StatelessWidget {
  const NightPeriodButton({
    super.key,
    required this.cubit,
  });

  final ProductCubit cubit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        cubit.changePeriod(false);
      },
      child: Container(
        height: 56,
        width: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color: cubit.isMorning == false
                  ? const Color(0xffF5DF99)
                  : Colors.white,
              width: 2.5),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/images/night_period.png'),
          const SizedBox(
            width: 8,
          ),
          const Text('Night',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              )),
        ]),
      ),
    );
  }
}

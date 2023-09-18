import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor_app/constant.dart';
import 'package:labor_app/core/widgets/custom_button.dart';
import 'package:labor_app/core/widgets/navigator_push_.dart';
import 'package:labor_app/features/history/presentation/views/history_view.dart';
import 'package:labor_app/features/product/presentation/manager/product_cubit/product_cubit.dart';
import 'package:labor_app/features/product/presentation/views/widgets/step_container.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(),
      child: BlocConsumer<ProductCubit, ProductState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = ProductCubit.get(context);
          return SafeArea(
            child: Scaffold(
              body: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          if (cubit.currentIndex == 0) {
                            Navigator.pop(context);
                          } else {
                            cubit.changeStep(cubit.currentIndex - 1);
                          }
                        },
                        icon: const Icon(Icons.arrow_back_sharp),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Hourly cleaning',
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                ),
                                Row(
                                  children: [
                                    StepContainer(
                                        color: cubit.currentIndex == 0
                                            ? kPrimaryColor
                                            : const Color(0xffDFDFDF),
                                        num: '1'),
                                    const SizedBox(
                                      width: 28,
                                    ),
                                    StepContainer(
                                        color: cubit.currentIndex == 1
                                            ? kPrimaryColor
                                            : const Color(0xffDFDFDF),
                                        num: '2'),
                                    const SizedBox(
                                      width: 28,
                                    ),
                                    StepContainer(
                                        color: cubit.currentIndex == 2
                                            ? kPrimaryColor
                                            : const Color(0xffDFDFDF),
                                        num: '3'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          color: const Color(0xffF9FFF6),
                          child: cubit.StepView[cubit.currentIndex],
                        ),
                      ),
                      Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 14),
                            child: CustomButton(
                              buttonName: 'Next',
                              fontSize: 18,
                              height: 60,
                              onTap: () {
                                if (cubit.currentIndex == 2) {
                                  navigatorPush(const HistoryView(), context);
                                } else {
                                  cubit.changeStep(cubit.currentIndex + 1);
                                }
                              },
                            ),
                          )),
                    ],
                  ),
                  Positioned(
                    top: 57,
                    right: 23,
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      'assets/images/flat.png',
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

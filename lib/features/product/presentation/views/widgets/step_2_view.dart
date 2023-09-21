import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor_app/constant.dart';
import 'package:labor_app/core/utils/assets.dart';
import 'package:labor_app/features/product/presentation/manager/product_cubit/product_cubit.dart';
import 'package:labor_app/features/product/presentation/views/widgets/filter_container.dart';

class Step2View extends StatelessWidget {
  const Step2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        var cubit = ProductCubit.get(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Filter',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    FilterContainer(text: 'Price'),
                    SizedBox(
                      width: 15,
                    ),
                    FilterContainer(text: 'Evaluation'),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 14,
                  ),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    final isSelected = cubit.selectedIndex == index;
                    return GestureDetector(
                      onTap: () => cubit.selectContainer(index),
                      child: Container(
                        width: double.infinity,
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                          border: Border.all(
                            color: isSelected ? kPrimaryColor : Colors.white,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      child: Image.asset(
                                        AssetsData.ontractCleaning,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 13,
                                    ),
                                    const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'United Group Company',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Color(0xffFDCF2D),
                                                size: 15,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Color(0xffFDCF2D),
                                                size: 15,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Color(0xffFDCF2D),
                                                size: 15,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Color(0xffFDCF2D),
                                                size: 15,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Color(0xffFDCF2D),
                                                size: 15,
                                              ),
                                            ],
                                          ),
                                        ]),
                                    const Spacer(),
                                    const Column(
                                      children: [
                                        Text(
                                          'Price',
                                          style: TextStyle(
                                            color: Color(0xffB5B5B5),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          '11500',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                              const Text(
                                'Sed ut perspiciatis unde omnis iste natus \nerror sit voluptatem accusantium ',
                                maxLines: 2,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: Colors.black54,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(AssetsData.country),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      const Text(
                                        'Philippines',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Icon(Icons.edit_note_outlined, size: 18),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        'Hourly cleaning ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.access_time_outlined,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '4 Hours',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

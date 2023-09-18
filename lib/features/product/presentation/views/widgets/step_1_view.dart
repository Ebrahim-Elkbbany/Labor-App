import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor_app/core/widgets/custom_text_form_field.dart';
import 'package:labor_app/features/product/presentation/manager/product_cubit/product_cubit.dart';
import 'package:labor_app/features/product/presentation/views/widgets/morning_period_button.dart';
import 'package:labor_app/features/product/presentation/views/widgets/night_period_button.dart';

class Step1View extends StatelessWidget {
  const Step1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductCubit, ProductState>(

      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var numberOfHoursController =TextEditingController();
        var nationalityController =TextEditingController();
        var cityController =TextEditingController();
        var cubit = ProductCubit.get(context);
        return ListView(
          physics: const BouncingScrollPhysics(),
          padding:
              const EdgeInsetsDirectional.only(top: 20, start: 20, end: 20),
          children: [
            const Text(
              'Period',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MorningPeriodButton(cubit: cubit),
                  NightPeriodButton(cubit: cubit),
                ],
              ),
            ),
            const Text(
              'Number of hours',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            CustomTextFormField(
             fillColor: Colors.white,
              controller: numberOfHoursController,
                 type: TextInputType.number,
              validate: (value) {
                if (value!.isEmpty) {
                  return 'please enter number of Hours';
                } else {
                  return null;
                }
              },
              label: 'Enter Number Of Hours',

            ),
            const SizedBox(height: 21),
            const Text(
              'Nationality',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            CustomTextFormField(
              fillColor: Colors.white,
              controller: nationalityController,
                 type: TextInputType.name,
              validate: (value) {
                if (value!.isEmpty) {
                  return 'please enter nationality';
                } else {
                  return null;
                }
              },
              label: 'Enter Nationality',

            ),
            const SizedBox(height: 21),
            const Text(
              'City',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            CustomTextFormField(
              fillColor: Colors.white,
              controller: cityController,
                 type: TextInputType.name,
              validate: (value) {
                if (value!.isEmpty) {
                  return 'please enter city';
                } else {
                  return null;
                }
              },
              label: 'Enter City',

            ),
          ],
        );
      },
    );
  }
}

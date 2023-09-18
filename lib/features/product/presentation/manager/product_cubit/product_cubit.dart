import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:labor_app/features/product/presentation/views/widgets/step_1_view.dart';
import 'package:labor_app/features/product/presentation/views/widgets/step_2_view.dart';
import 'package:labor_app/features/product/presentation/views/widgets/step_3_view.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  static ProductCubit get(context) => BlocProvider.of<ProductCubit>(context);

  int currentIndex = 0;
  bool isMorning = true;
  int selectedIndex = -1;

  List<Widget> StepView = [
    const Step1View(),
    const Step2View(),
    const Step3View(),

  ];
  void selectContainer(int index) {
    selectedIndex = index;
    emit(ContainerSelected());
  }

  void changeStep(int index) {
    currentIndex = index;
    emit(ChangeStep());
  }
  void changePeriod(bool isSelectedMorning) {
    isMorning = isSelectedMorning;
    emit(ChangePeriod());
  }

}

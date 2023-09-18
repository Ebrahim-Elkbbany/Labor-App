import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor_app/features/category/presentation/views/categories_view.dart';
import 'package:labor_app/features/history/presentation/views/history_view.dart';
import 'package:labor_app/features/home/presentation/views/home_view.dart';
import 'package:labor_app/features/profile/presentation/views/profile_view.dart';
part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  static LayoutCubit get(context) => BlocProvider.of<LayoutCubit>(context);
  int currentIndex =0;
  List<Widget> bottomScreens=const[
    HomeView(),
    HistoryView(),
    CategoriesView(),
    ProfileView(),
  ];
  void changeBottomNav (int index){
    currentIndex  = index;
    emit(BottomNav());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor/views/categories_view.dart';
import 'package:labor/views/history_view.dart';
import 'package:labor/views/home_view.dart';
import 'package:labor/views/profile_view.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);
  int currentIndex =0;
  List<Widget> bottomScreens=const[
    HomeView(),
    HistoryView(),
    CategoriesView(),
    ProfileView(),
  ];
  void changeBottomNav (int index){
    currentIndex  = index;
    emit(HomeBottomNav());
  }
}

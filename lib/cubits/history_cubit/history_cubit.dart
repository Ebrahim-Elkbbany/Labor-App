import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor/views/on_going_view.dart';
import 'package:labor/views/past_view.dart';

part 'history_state.dart';

class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit() : super(HistoryInitial());

  static HistoryCubit get(context) => BlocProvider.of<HistoryCubit>(context);
  int currentIndex = 0;
  bool isAccept = true;
  List<Widget> historyScreens = [
    const OnGoingView(),
    const PastView(),
  ];

  void historyNavText(int index) {
    currentIndex = index;
    emit(HistoryNavText());
  }

}

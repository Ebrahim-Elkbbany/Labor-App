import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor/constant.dart';
import 'package:labor/cubits/history_cubit/history_cubit.dart';
import 'package:labor/custom_widgets/custom_text_button.dart';
import 'package:labor/views/widgets/history_view_body.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HistoryCubit(),
      child: BlocConsumer<HistoryCubit, HistoryState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HistoryCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text(
                'History',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
            body: HistoryViewBody(cubit: cubit),
          );
        },
      ),
    );
  }
}



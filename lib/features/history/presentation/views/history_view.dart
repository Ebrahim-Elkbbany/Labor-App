import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor_app/core/utils/styles.dart';
import 'package:labor_app/features/history/presentation/manager/history_cubit/history_cubit.dart';
import 'package:labor_app/features/history/presentation/views/widgets/history_view_body.dart';

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
              title: Text(
                'History',
                style: Styles.textStyle18.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            body: HistoryViewBody(cubit: cubit),
          );
        },
      ),
    );
  }
}

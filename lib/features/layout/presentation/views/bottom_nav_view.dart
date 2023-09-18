import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor_app/features/layout/presentation/layout_cubit/layout_cubit.dart';


class LayoutView extends StatelessWidget {
  const LayoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          var cubit = LayoutCubit.get(context);
          return Scaffold(
            body: cubit.bottomScreens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
                onTap: (index) {
                  cubit.changeBottomNav(index);
                },
                items: const [
                  BottomNavigationBarItem(
                    label: '',
                    icon: Icon(Icons.home),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.task_sharp),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.apps),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: Icon(Icons.person),
                  ),
                ]),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor/cubits/home_cubit/home_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
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

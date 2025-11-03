import 'package:currency_app/features/bottom_nav/presentation/views/app_bottom_nav_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:currency_app/features/bottom_nav/presentation/manager/bottom_nav_cubit.dart';
import 'package:currency_app/features/bottom_nav/presentation/views/widgets/bottom_nav_app_bar.dart';
import 'package:currency_app/features/home/presentation/widgets/home_screen_list_view.dart';
import 'package:currency_app/features/home/presentation/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavCubit(),
      child: Scaffold(
        appBar: const BottomNavAppBar(),
        drawer: const CustomDrawer(),
        bottomNavigationBar: const AppBottomNavBar(),
        body: BlocBuilder<BottomNavCubit, int>(
          builder: (context, index) {
            switch (index) {
              case 0:
                return const HomeScreenListView();
              case 1:
                return const Center(child: Text('Recommendations'));
              case 2:
                return const Center(child: Text('VIP'));
              case 3:
                return const Center(child: Text('Settings'));
              default:
                return const HomeScreenListView();
            }
          },
        ),
      ),
    );
  }
}
